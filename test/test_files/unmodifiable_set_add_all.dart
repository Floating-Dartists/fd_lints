void f() {
  final view = UnmodifiableSetView({1, 2, 3});
  view.addAll([4, 5]);
}

// Remove this mock when a mock of dart:collection is available.
class UnmodifiableSetView<T> {
  UnmodifiableSetView(Set<T> set);

  void addAll(Iterable<T> values) {}
}
