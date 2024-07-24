import 'package:flutter/material.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/step_circle.dart';

class DirectionList extends StatelessWidget {
  const DirectionList(this.directions, {super.key});

  final List<RecipeDirectionModel> directions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (directions.isNotEmpty)
          Text(
            tr.directionsLabel,
            style: theme.textTheme.titleLarge,
          ),
        ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 4,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: directions.length,
          itemBuilder: (context, index) {
            final direction = directions[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StepCircle(index + 1),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(direction.direction),
                        const SizedBox(height: 8),
                        if (direction.images.isNotEmpty)
                          GridView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4,
                            ),
                            shrinkWrap: true,
                            itemCount: direction.images.length,
                            itemBuilder: (context, index) {
                              final imageProvider =
                                  IdImageProvider(direction.images[index]);
                              return AspectRatio(
                                aspectRatio: 1,
                                child: Material(
                                  color: theme.colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(8),
                                  clipBehavior: Clip.antiAlias,
                                  child: InkWell(
                                    onTap: () => ImageViewerRoute(
                                      imageProvider: imageProvider,
                                    ).push<void>(context),
                                    child: Image(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        else
                          const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
