import 'package:dartx/dartx.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/caching/cache.dart';

@Injectable(as: Cache)
class InMemoryCache implements Cache {
  static const _defaultMaxSize = 96;

  final int maxSize = _defaultMaxSize;
  final Map<String, _CacheEntry> _cache = {};

  @override
  void set(String key, dynamic value, [Duration? ttl]) {
    if (_cache.length >= maxSize) {
      final lessHits = _cache.minBy((e) => e.value._hits);
      if (lessHits != null) {
        _cache.remove(lessHits.key);
      }
    }
    _cache[key] =
        _CacheEntry(value, ttl != null ? DateTime.now().add(ttl) : null);
  }

  @override
  dynamic get(String key) {
    final entry = _cache[key];
    if (entry == null) {
      return null;
    }
    if (entry.expireAt != null && entry.expireAt!.isBefore(DateTime.now())) {
      _cache.remove(key);
      return null;
    }
    entry._hits++;
    return entry.value;
  }

  @override
  void delete(String key) {
    _cache.remove(key);
  }

  @override
  void clear() {
    _cache.clear();
  }
}

class _CacheEntry {
  _CacheEntry(this.value, this.expireAt);

  final dynamic value;
  final DateTime? expireAt;

  var _hits = 0;
}
