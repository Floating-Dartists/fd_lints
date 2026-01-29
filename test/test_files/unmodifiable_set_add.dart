void f() {
  final view = UnmodifiableSetView({1, 2, 3});
  view.add(4);
}

// Remove this mock when a mock of dart:collection is available.
class UnmodifiableSetView<T> {
  UnmodifiableSetView(Set<T> set);

  void add(T value) {}
}
