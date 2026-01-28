# do_not_mutate_unmodifiable_map_view

Do not attempt to mutate an `UnmodifiableMapView` as it will throw on runtime.

**BAD:**
```dart
void foo(UnmodifiableMapView<String, int> map) {
  map.remove('key'); // Throws UnsupportedError
}
```

This also applies to indexed assignments:
```dart
void foo(UnmodifiableMapView<String, int> map) {
  map['key'] = 10; // Throws UnsupportedError
}
```