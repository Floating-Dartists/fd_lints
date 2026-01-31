import 'dart:math';

abstract mixin class ListBase<E> implements List<E> {}

abstract mixin class SetBase<E> implements Set<E> {}

abstract class MapView<K, V> implements Map<K, V> {}

abstract class UnmodifiableListView<E> extends ListBase<E> {
  factory UnmodifiableListView(Iterable<E> _source) =>
      throw UnimplementedError();

  static Never _throwUnmodifiable() {
    throw UnsupportedError("Cannot change an unmodifiable list");
  }

  void operator []=(int index, E value) => _throwUnmodifiable();
  set length(int newLength) => _throwUnmodifiable();
  set first(E element) => _throwUnmodifiable();
  set last(E element) => _throwUnmodifiable();
  void setAll(int at, Iterable<E> iterable) => _throwUnmodifiable();
  void add(E value) => _throwUnmodifiable();
  void insert(int index, E element) => _throwUnmodifiable();
  void insertAll(int at, Iterable<E> iterable) => _throwUnmodifiable();
  void addAll(Iterable<E> iterable) => _throwUnmodifiable();
  bool remove(Object? element) => _throwUnmodifiable();
  void removeWhere(bool test(E element)) => _throwUnmodifiable();
  void retainWhere(bool test(E element)) => _throwUnmodifiable();
  void sort([Comparator<E>? compare]) => _throwUnmodifiable();
  void shuffle([Random? random]) => _throwUnmodifiable();
  void clear() => _throwUnmodifiable();
  E removeAt(int index) => _throwUnmodifiable();
  E removeLast() => _throwUnmodifiable();
  void setRange(int start, int end, Iterable<E> iterable,
          [int skipCount = 0]) =>
      _throwUnmodifiable();
  void removeRange(int start, int end) => _throwUnmodifiable();
  void replaceRange(int start, int end, Iterable<E> iterable) =>
      _throwUnmodifiable();
  void fillRange(int start, int end, [E? fillValue]) => _throwUnmodifiable();
}

abstract class UnmodifiableMapView<K, V> extends MapView<K, V> {
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
