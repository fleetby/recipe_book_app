import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/recipe/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_book_app/presentation/pages/sign_in_required_snack_bar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeAppBarComponent extends StatefulWidget {
  const RecipeAppBarComponent({super.key});

  @override
  State<RecipeAppBarComponent> createState() => _RecipeAppBarComponentState();
}

class _RecipeAppBarComponentState extends State<RecipeAppBarComponent> {
  static const expandedHeight = 300.0;
  static const toolbarHeight = 64.0;

  @override
  Widget build(BuildContext context) {
    final canEdit = context.read<RecipeBloc>().state.canEdit ?? false;
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        final collapsed =
            constraints.scrollOffset >= (expandedHeight - toolbarHeight);
        return SliverAppBar.large(
          expandedHeight: expandedHeight,
          leading: Skeleton.keep(
            child: _ScrollAwareAction(
              collapsed: collapsed,
              child: const BackButton(),
            ),
          ),
          title: BlocSelector<RecipeBloc, RecipeState, String?>(
            selector: (state) => state.recipe?.title,
            builder: (context, title) => Skeletonizer(
              enabled: title == null,
              child: Text(title ?? 'Some title'),
            ),
          ),
          actions: [
            if (canEdit)
              _ScrollAwareAction(
                collapsed: collapsed,
                child: IconButton(
                  onPressed: () {
                    final recipeId =
                        context.read<RecipeBloc>().state.recipe?.id;
                    if (recipeId == null) {
                      return;
                    }
                    EditRecipeRoute(recipeId: recipeId).push<void>(context);
                  },
                  icon: const Icon(PhosphorIconsRegular.pencil),
                ),
              ),
            BlocSelector<RecipeBloc, RecipeState, bool?>(
              selector: (state) => state.isSaved,
              builder: (context, isSaved) => _ScrollAwareAction(
                collapsed: collapsed,
                child: IconButton(
                  onPressed: () {
                    if (!requireSignedInOrShowSnackBar(context)) {
                      return;
                    }

                    if (isSaved == null) {
                      return;
                    }

                    context.read<RecipeBloc>().add(
                          isSaved ? const RecipeUnsave() : const RecipeSave(),
                        );
                  },
                  icon: Icon(
                    isSaved == true
                        ? PhosphorIconsFill.heart
                        : PhosphorIconsRegular.heart,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: IgnorePointer(
              ignoring: collapsed,
              child: InkWell(
                onTap: () {
                  final state = context.read<RecipeBloc>().state;
                  ImageViewerRoute(
                    imageUrl: state.recipe!.coverUrl,
                  ).push<void>(context);
                },
                child: BlocSelector<RecipeBloc, RecipeState, String?>(
                  selector: (state) => state.recipe?.coverUrl,
                  builder: (context, coverUrl) => Ink(
                    width: double.infinity,
                    // height: 300,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(8),
                      image: coverUrl != null
                          ? DecorationImage(
                              image: CachedNetworkImageProvider(coverUrl),
                              fit: BoxFit.cover,
                            )
                          : null,
                      color: Theme.of(context).colorScheme.surfaceTint,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ScrollAwareAction extends StatelessWidget {
  const _ScrollAwareAction({
    required this.child,
    required this.collapsed,
  });

  final Widget child;
  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    final widget = Skeleton.leaf(
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: collapsed ? Colors.transparent : Colors.black.withOpacity(0.8),
        ),
        child: child,
      ),
    );
    return collapsed
        ? widget
        : IconTheme(
            data: const IconThemeData(color: Color(0xFFE6E0E9)),
            child: widget,
          );
  }
}
