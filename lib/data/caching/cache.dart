abstract interface class Cache {
  void set(String key, dynamic value, [Duration? ttl]);
  dynamic get(String key);
  void delete(String key);
  void clear();
}
