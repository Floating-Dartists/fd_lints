abstract mixin class SetBase<E> implements Set<E> {}

abstract class UnmodifiableListView<E> {
  factory UnmodifiableListView(List<E> _source) => throw UnimplementedError();
}

abstract class UnmodifiableMapView<K, V> {
  factory UnmodifiableMapView(Map<K, V> _source) => throw UnimplementedError();
}

abstract class UnmodifiableSetView<E> extends SetBase<E> {
  factory UnmodifiableSetView(Set<E> _source) => throw UnimplementedError();

  static Never _throwUnmodifiable() {
    throw UnsupportedError("Cannot change an unmodifiable set");
  }

  bool add(E value) => _throwUnmodifiable();
  void clear() => _throwUnmodifiable();
  void addAll(Iterable<E> elements) => _throwUnmodifiable();
  void removeAll(Iterable<Object?> elements) => _throwUnmodifiable();
  void retainAll(Iterable<Object?> elements) => _throwUnmodifiable();
  void removeWhere(bool test(E element)) => _throwUnmodifiable();
  void retainWhere(bool test(E element)) => _throwUnmodifiable();
  bool remove(Object? value) => _throwUnmodifiable();
}
