# do_not_mutate_unmodifiable_list_view

Do not attempt to mutate an `UnmodifiableListView` as it will throw on runtime.

**BAD:**
```dart
void foo(UnmodifiableListView<int> list) {
  list.add(1); // Throws UnsupportedError
}
```

This also applies to indexed assignments:
```dart
void foo(UnmodifiableListView<int> list) {
  list[0] = 10; // Throws UnsupportedError
}
```