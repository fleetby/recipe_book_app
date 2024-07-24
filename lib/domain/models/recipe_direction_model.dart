import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_direction_model.freezed.dart';

@freezed
class RecipeDirectionModel with _$RecipeDirectionModel {
  const factory RecipeDirectionModel({
    required String direction,
    required List<String> images,
  }) = _RecipeDirectionModel;
}
