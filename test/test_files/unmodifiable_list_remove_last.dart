import 'dart:collection';

void f() {
  final view = UnmodifiableListView([1, 2, 3]);
  view.removeLast();
}
