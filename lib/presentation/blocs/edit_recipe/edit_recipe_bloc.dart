import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/recipe_direction_model.dart';
import 'package:recipe_book_app/domain/models/recipe_ingredient_model.dart';
import 'package:recipe_book_app/domain/models/recipe_model.dart';
import 'package:recipe_book_app/domain/use_cases/delete_recipe_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/edit_recipe_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_recipe_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/upload_file_use_case.dart';
import 'package:recipe_book_app/presentation/extensions/xfile_extensions.dart';
import 'package:recipe_book_app/presentation/view_models/directions_editor_item_view_model.dart';
import 'package:recipe_book_app/presentation/view_models/image_item_view_model.dart';

part 'edit_recipe_bloc.freezed.dart';

part 'edit_recipe_event.dart';
part 'edit_recipe_state.dart';

@injectable
class EditRecipeBloc extends Bloc<EditRecipeEvent, EditRecipeState> {
  EditRecipeBloc(
    this.getRecipeByIdUseCase,
    this.deleteRecipeByIdUseCase,
    this.editRecipeUseCase,
    this.uploadFileUseCase,
  ) : super(const EditRecipeState()) {
    on<EditRecipeLoad>(_load);
    on<EditRecipeSubmit>(_submit);
    on<EditRecipeDelete>(_delete);
  }

  final GetRecipeByIdUseCase getRecipeByIdUseCase;
  final DeleteRecipeByIdUseCase deleteRecipeByIdUseCase;
  final EditRecipeUseCase editRecipeUseCase;
  final UploadFileUseCase uploadFileUseCase;

  Future<void> _load(
    EditRecipeLoad event,
    Emitter<EditRecipeState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const EditRecipeStateStatusLoading()));
      final recipe = await getRecipeByIdUseCase(
        GetRecipeByIdUseCaseParams(id: event.recipeId),
      );
      emit(state.copyWith(recipe: recipe, status: null));
    } on Exception catch (e, st) {
      emit(state.copyWith(status: EditRecipeStateStatus.error(e, st)));
    }
  }

  Future<void> _submit(
    EditRecipeSubmit event,
    Emitter<EditRecipeState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const EditRecipeStateStatusLoading()));
      final recipe = await editRecipeUseCase(
        EditRecipeUseCaseParams(
          id: state.recipe!.id,
          coverId: switch (event.cover) {
            ImageIdItemViewModel(:final imageId) => imageId,
            ImageXfileItemViewModel(:final imageXfile) =>
              await uploadFileUseCase(
                UploadFileUseCaseParams(imageXfile.file),
              ),
            null => null,
          },
          deleteCover: event.cover == null,
          title: event.title,
          description: event.description,
          servings: event.servings,
          preparationTime: event.preparationTime,
          ingredients: event.ingredients
              .map(
                (e) => RecipeIngredientModel(
                  name: e.$1,
                  quantity: e.$2,
                ),
              )
              .toList(),
          directions: [
            for (final direction in event.directions)
              RecipeDirectionModel(
                direction: direction.direction,
                images: [
                  for (final image in direction.images)
                    switch (image) {
                      ImageIdItemViewModel(:final imageId) => imageId,
                      ImageXfileItemViewModel(:final imageXfile) =>
                        await uploadFileUseCase(
                          UploadFileUseCaseParams(
                            File(imageXfile.path),
                          ),
                        )
                    },
                ],
              ),
          ],
        ),
      );
      emit(
        state.copyWith(
          recipe: recipe,
          status: const EditRecipeStateStatusSuccess(),
        ),
      );
    } on Exception catch (e, st) {
      emit(state.copyWith(status: EditRecipeStateStatus.error(e, st)));
    }
  }

  Future<void> _delete(
    EditRecipeDelete event,
    Emitter<EditRecipeState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const EditRecipeStateStatusLoading()));
      await deleteRecipeByIdUseCase(
        DeleteRecipeByIdUseCaseParams(id: state.recipe!.id),
      );
      emit(
        state.copyWith(
          recipe: null,
          status: const EditRecipeStateStatusDeleted(),
        ),
      );
    } on Exception catch (e, st) {
      emit(state.copyWith(status: EditRecipeStateStatus.error(e, st)));
    }
  }
}
