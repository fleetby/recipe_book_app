import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/recipe/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/pages/sign_in_required_snack_bar.dart';
import 'package:recipe_book_app/presentation/utils/tr.dart';
import 'package:recipe_book_app/presentation/widgets/direction_list.dart';
import 'package:recipe_book_app/presentation/widgets/follow_button.dart';
import 'package:recipe_book_app/presentation/widgets/ingredient_list.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_app_bar_component.dart';
import 'package:recipe_book_app/presentation/widgets/saved_count_recipe_badge.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';
import 'package:recipe_book_app/presentation/widgets/user_profile_avatar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeBody extends StatelessWidget {
  const RecipeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Scaffold(
      body: BlocBuilder<RecipeBloc, RecipeState>(
        builder: (context, state) {
          return Skeletonizer(
            enabled: state.recipe == null,
            ignorePointers: false,
            child: CustomScrollView(
              slivers: [
                const RecipeAppBarComponent(),
                BlocSelector<RecipeBloc, RecipeState, String?>(
                  selector: (state) => state.recipe?.title,
                  builder: (context, title) {
                    return SliverToBoxAdapter(
                      child: Skeletonizer(
                        enabled: title == null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16)
                              .copyWith(top: 16),
                          child: Text(
                            title ?? 'Some title',
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(state.recipe?.description ?? 'Some description'),
                        const SizedBox(height: 16),
                        IngredientList(
                          state.recipe?.ingredients ?? [],
                          servings: state.recipe?.servings,
                          preparationTime: state.recipe?.preparationTime,
                        ),
                        const SizedBox(height: 16),
                        if (state.recipe?.directions != null)
                          DirectionList(state.recipe!.directions!),
                        const _AuthorCard(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          alignment: Alignment.centerLeft,
                          child: SavedCountRecipeBadge(
                            state.recipe?.savedCount.toString() ?? '0',
                            color: theme.colorScheme.surfaceContainerLow,
                          ),
                        ),
                        const Divider(),
                        const _CommentsSection(),
                        const Divider(),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: UserProfileAvatar(
                                state.recipe?.authorAvatarId,
                              ),
                            ),
                            Text(tr.moreRecipesFromAuthorLabel),
                          ],
                        ),
                        // const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<RecipeBloc, RecipeState>(
                  builder: (context, state) {
                    if (state.recipe == null) {
                      return const SliverToBoxAdapter();
                    }
                    return BlocProvider(
                      create: (context) {
                        final recipe = context.read<RecipeBloc>().state.recipe!;
                        return get<RecipeListBloc>()
                          ..add(
                            RecipeListLoad(
                              params: RecipeListParams(
                                authorId: recipe.authorId,
                                exceptId: [recipe.id],
                              ),
                            ),
                          );
                      },
                      child: const SliverRecipeListComponent(),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _AuthorCard extends StatelessWidget {
  const _AuthorCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) => Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          left: 8,
          right: 8,
          top: 12,
          bottom: 8,
        ),
        child: InkWell(
          onTap: () =>
              AuthorRoute(userId: state.recipe!.userId).push<void>(context),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  // HACK: https://github.com/flutter/flutter/issues/68767
                  child: Container(
                    constraints: BoxConstraints.tight(const Size.square(48)),
                    alignment: Alignment.center,
                    child: UserProfileAvatar(
                      state.recipe?.authorAvatarId,
                      radius: 24,
                    ),
                  ),
                ),
                Text(
                  tr.publishedByLabel,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  state.recipe?.authorProfileName ?? 'John Doe',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                BlocSelector<SettingsBloc, SettingsState, Locale>(
                  selector: (state) =>
                      (state as SettingsLoaded).preferredLocale ??
                      getDefaultSupportedLocale(),
                  builder: (context, locale) => Text(
                    DateFormat(
                      null,
                      locale.toLanguageTag(),
                    ).format(
                      state.recipe?.publishedAt.toLocal() ?? DateTime.now(),
                    ),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 8),
                BlocSelector<RecipeBloc, RecipeState, bool>(
                  selector: (state) => state.canEdit == true,
                  builder: (context, isMyRecipe) => isMyRecipe
                      ? const SizedBox()
                      : BlocSelector<RecipeBloc, RecipeState, bool>(
                          selector: (state) => state.isAuthorFollowed ?? false,
                          builder: (context, followed) => FollowButton(
                            followed: followed,
                            onFollow: () {
                              if (!requireSignedInOrShowSnackBar(context)) {
                                return;
                              }

                              context
                                  .read<RecipeBloc>()
                                  .add(const RecipeFollowAuthor());
                            },
                            onUnfollow: () {
                              if (!requireSignedInOrShowSnackBar(context)) {
                                return;
                              }

                              context
                                  .read<RecipeBloc>()
                                  .add(const RecipeUnfollowAuthor());
                            },
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CommentsSection extends StatelessWidget {
  const _CommentsSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    final count =
        context.select((RecipeBloc bloc) => bloc.state.recipe?.commentCount) ??
            0;
    return Column(
      children: [
        Row(
          children: [
            const Icon(PhosphorIconsRegular.chatCircleDots),
            const SizedBox(width: 8),
            Text(
              tr.commentsCount(count),
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: 8),
        BlocBuilder<RecipeBloc, RecipeState>(
          builder: (context, state) => Row(
            children: [
              UserProfileAvatar(
                state.authenticatedUserAvatar,
                radius: 16,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) => TextField(
                    onTap: () {
                      final recipeId =
                          context.read<RecipeBloc>().state.recipe?.id;
                      if (recipeId != null) {
                        RecipeCommentsRoute(recipeId: recipeId)
                            .push<void>(context);
                      }
                    },
                    onTapAlwaysCalled: state is! AuthenticationSignedIn,
                    style: theme.textTheme.titleSmall,
                    showCursor: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: tr.seeCommentsAction,
                      constraints: const BoxConstraints.tightFor(height: 32),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
