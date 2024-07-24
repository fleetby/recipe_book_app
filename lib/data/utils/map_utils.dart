extension MapUtils<K, V> on Map<K, V> {
  Map<K, V> get withoutNullValues =>
      {...this}..removeWhere((key, value) => value == null);
}
