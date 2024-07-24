import 'package:recipe_book_app/domain/constants/recipe_order.dart';

enum RecipeSearchType {
  mostLiked(RecipeOrder.savedCountDesc),
  mostCommented(RecipeOrder.commentCountDesc),
  newest(RecipeOrder.publishedAtDesc),
  oldest(RecipeOrder.publishedAtAsc);

  const RecipeSearchType(this.recipeOrder);
  final RecipeOrder recipeOrder;
}
