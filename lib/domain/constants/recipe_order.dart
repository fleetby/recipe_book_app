enum RecipeOrder {
  savedCountAsc(true),
  savedCountDesc,
  commentCountAsc(true),
  commentCountDesc,
  publishedAtAsc(true),
  publishedAtDesc;

  const RecipeOrder([this.ascending = false]);
  final bool ascending;
}
