import 'package:recipe_book_app/data/caching/cache.dart';
import 'package:recipe_book_app/data/caching/typed_cache_key.dart';

extension TypedCacheExtensions on Cache {
  void setTyped<T>(TypedCacheKey<T> key, T value, [Duration? ttl]) =>
      set(key.key, value, ttl);

  T? getTyped<T>(TypedCacheKey<T> key) => get(key.key) as T?;

  void deleteTyped<T>(TypedCacheKey<T> key) => delete(key.key);
}
