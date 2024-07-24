import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/use_cases/create_recipe_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/upload_file_use_case.dart';
import 'package:recipe_book_app/presentation/view_models/directions_editor_item_view_model.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

part 'create_recipe_bloc.freezed.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';

@injectable
class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc(
    this.createRecipeUseCase,
    this.uploadFileUseCase,
  ) : super(const CreateRecipeInitial()) {
    on<CreateRecipeCreate>(_create);
  }

  final CreateRecipeUseCase createRecipeUseCase;
  final UploadFileUseCase uploadFileUseCase;

  Future<void> _create(
    CreateRecipeCreate event,
    Emitter<CreateRecipeState> emit,
  ) async {
    try {
      emit(const CreateRecipeLoading());
      final coverId = switch (event.cover) {
        final ImageIdItemViewModel image => image.imageId,
        final ImageXfileItemViewModel image => await uploadFileUseCase(
            UploadFileUseCaseParams(
              File(image.imageXfile.path),
            ),
          ),
        null => null,
      };

      final directions = <RecipeDirectionModel>[];
      for (final direction in event.directions) {
        final imagesIds = await Future.wait(
          [
            for (final image in direction.images)
              switch (image) {
                final ImageIdItemViewModel image => Future.value(image.imageId),
                final ImageXfileItemViewModel image => uploadFileUseCase(
                    UploadFileUseCaseParams(
                      File(image.imageXfile.path),
                    ),
                  )
              },
          ],
        );

        directions.add(
          RecipeDirectionModel(
            direction: direction.direction,
            images: imagesIds,
          ),
        );
      }

      final recipe = await createRecipeUseCase(
        CreateRecipeUseCaseParams(
          title: event.title,
          description: event.description,
          servings: event.servings,
          preparationTime: event.preparationTime,
          coverId: coverId,
          ingredients: event.ingredients.map((e) {
            final (ingredient, quantity) = e;

            return RecipeIngredientModel(
              name: ingredient,
              quantity: quantity,
            );
          }).toList(),
          directions: directions,
        ),
      );
      emit(CreateRecipeSuccess(recipeId: recipe.id));
    } catch (e) {
      emit(const CreateRecipeError());
    }
  }
}
