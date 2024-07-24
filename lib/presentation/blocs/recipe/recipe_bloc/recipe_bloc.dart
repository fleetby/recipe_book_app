import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/use_cases/check_is_following_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/check_is_recipe_saved_by_authenticated_user_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/follow_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_category_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_file_url_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_is_following_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/save_recipe_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/unfollow_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/unsave_recipe_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_view_model.dart';

part 'recipe_bloc.freezed.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

@injectable
class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc(
    this.getRecipeByIdUseCase,
    this.getUserProfileByIdUseCase,
    this.getAuthenticatedUserIdUseCase,
    this.getCategoryByIdUseCase,
    this.checkIsRecipeSavedByAuthenticatedUserUseCase,
    this.saveRecipeUseCase,
    this.unsaveRecipeUseCase,
    this.getFileUrlUseCase,
    this.followUseCase,
    this.unfollowUseCase,
    this.checkIsFollowingUseCase,
    this.getIsFollowingChangedStreamUseCase,
    this.getRecipeChangedStreamUseCase,
  ) : super(const RecipeState()) {
    on<RecipeLoad>(_load);
    on<RecipeSave>(_save, transformer: droppable());
    on<RecipeUnsave>(_unsave, transformer: droppable());
    on<RecipeFollowAuthor>(_followAuthor, transformer: droppable());
    on<RecipeUnfollowAuthor>(_unfollowAuthor, transformer: droppable());
    on<RecipeSetAuthorFollowed>(_setAuthorFollowed);
  }

  final GetRecipeByIdUseCase getRecipeByIdUseCase;
  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final GetCategoryByIdUseCase getCategoryByIdUseCase;
  final CheckIsRecipeSavedByAuthenticatedUserUseCase
      checkIsRecipeSavedByAuthenticatedUserUseCase;
  final SaveRecipeUseCase saveRecipeUseCase;
  final UnsaveRecipeUseCase unsaveRecipeUseCase;
  final GetFileUrlUseCase getFileUrlUseCase;
  final FollowUseCase followUseCase;
  final UnfollowUseCase unfollowUseCase;
  final CheckIsFollowingUseCase checkIsFollowingUseCase;
  final GetIsFollowingChangedStreamUseCase getIsFollowingChangedStreamUseCase;
  final GetRecipeChangedStreamUseCase getRecipeChangedStreamUseCase;

  StreamSubscription<GetIsFollowingChangedStreamUseCaseEvent>?
      _isFollowingChangedStreamSubscription;
  StreamSubscription<int>? _recipeChangedStreamSubscription;

  Future<void> _load(RecipeLoad event, Emitter<RecipeState> emit) async {
    try {
      emit(const RecipeState());
      unawaited(_recipeChangedStreamSubscription?.cancel());
      unawaited(_isFollowingChangedStreamSubscription?.cancel());
      final recipe =
          await getRecipeByIdUseCase(GetRecipeByIdUseCaseParams(id: event.id));
      if (recipe == null) {
        return;
      }
      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: recipe.userId),
      );
      final category = recipe.categoryId != null
          ? await getCategoryByIdUseCase(
              GetCategoryByIdUseCaseParams(id: recipe.categoryId!),
            )
          : null;
      final authenticatedUserId = await getAuthenticatedUserIdUseCase();
      final isSaved = authenticatedUserId != null
          ? await checkIsRecipeSavedByAuthenticatedUserUseCase(
              CheckIsRecipeSavedByAuthenticatedUserUseCaseParams(id: recipe.id),
            )
          : null;
      final authenticatedUserProfile = authenticatedUserId != null
          ? await getUserProfileByIdUseCase(
              GetUserProfileByIdUseCaseParams(id: authenticatedUserId),
            )
          : null;
      emit(
        state.copyWith(
          recipe: RecipeViewModel.mapFrom(
            recipe: recipe,
            userProfile: userProfile!,
            category: category,
            coverUrl: recipe.coverId != null
                ? await getFileUrlUseCase(
                    GetFileUrlUseCaseParams(recipe.coverId!),
                  )
                : null,
          ),
          isSaved: isSaved,
          canEdit: recipe.userId == authenticatedUserId,
          authenticatedUserAvatar: authenticatedUserProfile?.avatar,
          isAuthorFollowed: authenticatedUserId != null
              ? await checkIsFollowingUseCase(
                  CheckIsFollowingUseCaseParams(
                    followerId: authenticatedUserId,
                    followingId: recipe.userId,
                  ),
                )
              : null,
        ),
      );

      _recipeChangedStreamSubscription = getRecipeChangedStreamUseCase(
        GetRecipeChangedStreamUseCaseParams(recipeId: event.id),
      ).listen((_) => add(RecipeLoad(event.id)));

      _isFollowingChangedStreamSubscription =
          getIsFollowingChangedStreamUseCase(
        GetIsFollowingChangedStreamUseCaseParams(
          followerId: authenticatedUserId,
          followingId: recipe.userId,
        ),
      ).listen(
        (event) {
          add(RecipeSetAuthorFollowed(event.isFollowing));
        },
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  Future<void> _save(RecipeSave event, Emitter<RecipeState> emit) async {
    final oldSavedState = state.isSaved;
    try {
      emit(state.copyWith(isSaved: true));
      await saveRecipeUseCase(
        SaveRecipeUseCaseParams(id: state.recipe!.id),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(isSaved: oldSavedState));
    }
  }

  Future<void> _unsave(RecipeUnsave event, Emitter<RecipeState> emit) async {
    final oldSavedState = state.isSaved;
    try {
      emit(state.copyWith(isSaved: false));
      await unsaveRecipeUseCase(
        UnsaveRecipeUseCaseParams(id: state.recipe!.id),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(isSaved: oldSavedState));
    }
  }

  Future<void> _followAuthor(
    RecipeFollowAuthor event,
    Emitter<RecipeState> emit,
  ) async {
    final oldFollowedState = state.isAuthorFollowed;
    try {
      emit(state.copyWith(isAuthorFollowed: true));
      await followUseCase(
        FollowUseCaseParams(userId: state.recipe!.userId),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(isAuthorFollowed: oldFollowedState));
    }
  }

  Future<void> _unfollowAuthor(
    RecipeUnfollowAuthor event,
    Emitter<RecipeState> emit,
  ) async {
    final oldFollowedState = state.isAuthorFollowed;
    try {
      emit(state.copyWith(isAuthorFollowed: false));
      await unfollowUseCase(
        UnfollowUseCaseParams(userId: state.recipe!.userId),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(isAuthorFollowed: oldFollowedState));
    }
  }

  Future<void> _setAuthorFollowed(
    RecipeSetAuthorFollowed event,
    Emitter<RecipeState> emit,
  ) async {
    emit(state.copyWith(isAuthorFollowed: event.followed));
  }

  @override
  Future<void> close() {
    _isFollowingChangedStreamSubscription?.cancel();
    _recipeChangedStreamSubscription?.cancel();
    return super.close();
  }
}
