import 'dart:collection';

void f() {
  final view = UnmodifiableListView([1, 2, 3]);
  view.setAll(0, [9, 8, 7]);
}
