void f() {
  final view = UnmodifiableSetView({1, 2, 3});
  view.clear();
}

// Remove this mock when a mock of dart:collection is available.
class UnmodifiableSetView<T> {
  UnmodifiableSetView(Set<T> set);

  void clear() {}
}
