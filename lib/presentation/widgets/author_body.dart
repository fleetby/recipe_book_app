import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/author/author_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/pages/sign_in_required_snack_bar.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/follow_button.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';
import 'package:recipe_book_app/presentation/widgets/user_profile_avatar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AuthorBody extends StatelessWidget {
  const AuthorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return BlocSelector<AuthorBloc, AuthorState, String?>(
      selector: (state) => state.userProfile?.userId,
      builder: (context, userId) {
        return BlocProvider(
          create: (context) {
            final bloc = get<RecipeListBloc>();
            if (userId != null) {
              bloc.add(
                RecipeListLoad(params: RecipeListParams(authorId: userId)),
              );
            }
            return bloc;
          },
          child: Scaffold(
            body: Builder(
              builder: (context) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<RecipeListBloc>().add(
                          RecipeListLoad(
                            params: RecipeListParams(
                              authorId: userId,
                              invalidateCache: true,
                            ),
                          ),
                        );
                  },
                  child: CustomScrollView(
                    slivers: [
                      SliverSafeArea(
                        sliver: SliverAppBar.large(
                          expandedHeight: 220,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BlocSelector<AuthorBloc, AuthorState, String?>(
                                    selector: (state) =>
                                        state.userProfile?.avatar,
                                    builder: (context, state) =>
                                        UserProfileAvatar(
                                      state,
                                      radius: 32,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  BlocBuilder<AuthorBloc, AuthorState>(
                                    builder: (context, state) => Skeletonizer(
                                      enabled: state.userProfile == null,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            state.userProfile?.name ??
                                                'Some name',
                                            style: theme.textTheme.titleLarge,
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                tr.followersCount(
                                                  state.userProfile?.followers ??
                                                      0,
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                tr.followingCount(
                                                  state.userProfile?.following ??
                                                      0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8),
                                          BlocBuilder<AuthorBloc, AuthorState>(
                                            builder: (context, state) =>
                                                state.isMe
                                                    ? const SizedBox()
                                                    : FollowButton(
                                                        followed: state.followed,
                                                        onFollow: () {
                                                          if (!requireSignedInOrShowSnackBar(
                                                            context,
                                                          )) {
                                                            return;
                                                          }
                        
                                                          context
                                                              .read<AuthorBloc>()
                                                              .add(
                                                                const AuthorFollow(),
                                                              );
                                                        },
                                                        onUnfollow: () {
                                                          if (!requireSignedInOrShowSnackBar(
                                                            context,
                                                          )) {
                                                            return;
                                                          }
                        
                                                          context
                                                              .read<AuthorBloc>()
                                                              .add(
                                                                const AuthorUnfollow(),
                                                              );
                                                        },
                                                      ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          title: BlocSelector<AuthorBloc, AuthorState, String?>(
                            selector: (state) => state.userProfile?.name,
                            builder: (context, name) => Skeletonizer(
                              enabled: name == null,
                              child: Text(name ?? 'Some name'),
                            ),
                          ),
                        ),
                      ),
                      BlocSelector<AuthorBloc, AuthorState, String?>(
                        selector: (state) => state.userProfile?.userId,
                        builder: (context, userId) {
                          if (userId == null) {
                            return const SliverToBoxAdapter();
                          }
                          return SliverRecipeListComponent(
                            emptyPlaceholder: SliverEmptyListPlaceholder(
                              icon: PhosphorIconsRegular.cookingPot,
                              text: tr.noRecipesYetPlaceholder,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
