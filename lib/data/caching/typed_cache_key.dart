class TypedCacheKey<T> {
  const TypedCacheKey(String key) : _key = key;
  final String _key;
  String get key => _key;
}
