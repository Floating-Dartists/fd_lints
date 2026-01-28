# do_not_mutate_unmodifiable_set_view

Do not attempt to mutate an `UnmodifiableSetView` as it will throw on runtime.

**BAD:**
```dart
void foo(UnmodifiableSetView<int> set) {
  set.add(1); // Throws UnsupportedError
}
```