import 'dart:collection';

void f() {
  final view = UnmodifiableSetView({1, 2, 3});
  view.addAll([4, 5]);
}
