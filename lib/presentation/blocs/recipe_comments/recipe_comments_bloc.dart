import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/use_cases/create_recipe_comment_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/delete_comment_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_comments_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/presentation/constants/op_status.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_comment_view_model.dart';

part 'recipe_comments_bloc.freezed.dart';
part 'recipe_comments_event.dart';
part 'recipe_comments_state.dart';

@injectable
class RecipeCommentsBloc
    extends Bloc<RecipeCommentsEvent, RecipeCommentsState> {
  RecipeCommentsBloc(
    this.getRecipeCommentsUseCase,
    this.createRecipeCommentUseCase,
    this.getUserProfileByIdUseCase,
    this.getAuthenticatedUserIdUseCase,
    this.deleteCommentUseCase,
  ) : super(const RecipeCommentsState()) {
    on<RecipeCommentsLoad>(_load);
    on<RecipeCommentsCreateComment>(_addComment);
    on<RecipeCommentsDeleteComment>(_deleteComment);
    on<RecipeCommentsLoadAuthenticatedUser>(_loadAuthenticatedUser);
  }

  final GetRecipeCommentsUseCase getRecipeCommentsUseCase;
  final CreateRecipeCommentUseCase createRecipeCommentUseCase;
  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final DeleteCommentUseCase deleteCommentUseCase;

  Future<void> _load(
    RecipeCommentsLoad event,
    Emitter<RecipeCommentsState> emit,
  ) async {
    try {
      emit(const RecipeCommentsState());
      final result = await getRecipeCommentsUseCase(
        GetRecipeCommentsUseCaseParams(
          recipeId: event.recipeId,
          omitCache: event.invalidateCache,
        ),
      );

      final authenticatedUserId = await getAuthenticatedUserIdUseCase();

      final commentViewModels = <RecipeCommentViewModel>[];
      for (final comment in result) {
        final userProfile = await getUserProfileByIdUseCase(
          GetUserProfileByIdUseCaseParams(id: comment.userId),
        );

        if (userProfile == null) {
          throw Exception('User profile not found, ${comment.userId}');
        }

        commentViewModels.add(
          RecipeCommentViewModel.mapFrom(
            comment: comment,
            userProfile: userProfile,
            canDelete: authenticatedUserId == comment.userId,
          ),
        );
      }

      final authenticatedUserProfile = authenticatedUserId != null
          ? await getUserProfileByIdUseCase(
              GetUserProfileByIdUseCaseParams(id: authenticatedUserId),
            )
          : null;

      emit(
        state.copyWith(
          comments: commentViewModels,
          totalComments: result.length,
          recipeId: event.recipeId,
          authenticatedUser: authenticatedUserProfile,
        ),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  Future<void> _addComment(
    RecipeCommentsCreateComment event,
    Emitter<RecipeCommentsState> emit,
  ) async {
    try {
      emit(state.copyWith(currentOpStatus: OpStatus.loading));
      final result = await createRecipeCommentUseCase(
        CreateRecipeCommentUseCaseParams(
          recipeId: state.recipeId!,
          text: event.text,
        ),
      );

      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: result.userId),
      );

      if (userProfile == null) {
        throw Exception('User profile not found, ${result.userId}');
      }

      final commentViewModel = RecipeCommentViewModel.mapFrom(
        comment: result,
        userProfile: userProfile,
        canDelete: true,
      );

      emit(
        state.copyWith(
          comments: [commentViewModel, ...state.comments!],
          totalComments: state.totalComments! + 1,
          currentOpStatus: OpStatus.success,
        ),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(currentOpStatus: OpStatus.error));
    }
  }

  Future<void> _deleteComment(
    RecipeCommentsDeleteComment event,
    Emitter<RecipeCommentsState> emit,
  ) async {
    try {
      emit(state.copyWith(currentOpStatus: OpStatus.loading));
      await deleteCommentUseCase(
        DeleteCommentUseCaseParams(event.commentId),
      );
      emit(
        state.copyWith(
          comments: state.comments!
              .where((comment) => comment.id != event.commentId)
              .toList(),
          totalComments: state.totalComments! - 1,
          currentOpStatus: OpStatus.success,
        ),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(currentOpStatus: OpStatus.error));
    }
  }

  Future<void> _loadAuthenticatedUser(
    RecipeCommentsLoadAuthenticatedUser event,
    Emitter<RecipeCommentsState> emit,
  ) async {
    try {
      final uid = await getAuthenticatedUserIdUseCase();
      emit(
        state.copyWith(
          authenticatedUser: uid != null
              ? await getUserProfileByIdUseCase(
                  GetUserProfileByIdUseCaseParams(
                    id: uid,
                  ),
                )
              : null,
        ),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }
}
