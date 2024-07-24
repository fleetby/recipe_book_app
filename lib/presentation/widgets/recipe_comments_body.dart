import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_comments/recipe_comments_bloc.dart';
import 'package:recipe_book_app/presentation/constants/op_status.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_comment_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/post_recipe_comment_bar.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_comment_list.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeCommentsBody extends StatelessWidget {
  RecipeCommentsBody({
    super.key,
  });

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSignedIn) {
          context
              .read<RecipeCommentsBloc>()
              .add(const RecipeCommentsLoadAuthenticatedUser());
        }
      },
      child: BlocListener<RecipeCommentsBloc, RecipeCommentsState>(
        listenWhen: (previous, current) =>
            previous.currentOpStatus != current.currentOpStatus,
        listener: (context, state) {
          if (state.currentOpStatus == OpStatus.error) {
            _scaffoldMessengerKey.currentState?.showSnackBar(
              SnackBar(
                content: Text(tr.anErrorOccured),
                showCloseIcon: true,
              ),
            );
          }
        },
        child: ScaffoldMessenger(
          key: _scaffoldMessengerKey,
          child: Scaffold(
            appBar: AppBar(
              title:
                  BlocSelector<RecipeCommentsBloc, RecipeCommentsState, int?>(
                selector: (state) => state.totalComments,
                builder: (context, totalComments) => Skeletonizer(
                  enabled: totalComments == null,
                  child: Text(
                    tr.commentsPageCommentCountLabel(totalComments ?? 0),
                  ),
                ),
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                context.read<RecipeCommentsBloc>().add(
                      RecipeCommentsLoad(
                        recipeId:
                            context.read<RecipeCommentsBloc>().state.recipeId!,
                        invalidateCache: true,
                      ),
                    );
              },
              child: Column(
                children: [
                  Expanded(
                    child: BlocSelector<RecipeCommentsBloc, RecipeCommentsState,
                        List<RecipeCommentViewModel>?>(
                      selector: (state) => state.comments,
                      builder: (context, comments) {
                        if (comments != null) {
                          if (comments.isEmpty) {
                            return EmptyListPlaceholder(
                              icon: PhosphorIconsRegular.chatsCircle,
                              text: tr.noCommentsYetPlaceholder,
                            );
                          }
                          return RecipeCommentList(
                            comments,
                            onOpenUserProfile: (userId) =>
                                AuthorRoute(userId: userId).push<void>(context),
                            onDeleteComment: (commentId) => context
                                .read<RecipeCommentsBloc>()
                                .add(RecipeCommentsDeleteComment(commentId)),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                  BlocBuilder<RecipeCommentsBloc, RecipeCommentsState>(
                    builder: (context, state) => PostRecipeCommentBar(
                      userAvatarId: state.authenticatedUser?.avatar,
                      loading: state.currentOpStatus == OpStatus.loading,
                      onSubmit: (text) => context
                          .read<RecipeCommentsBloc>()
                          .add(RecipeCommentsCreateComment(text)),
                      alternateAction: context.read<AuthenticationBloc>().state
                              is! AuthenticationSignedIn
                          ? () => const RequireSignRoute().push<void>(context)
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
