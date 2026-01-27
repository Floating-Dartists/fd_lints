# avoid_non_null_assertion

**AVOID** using the non-null assertion operator (`!`).

**BAD:**
```dart
void foo(String? bar) {
  print(bar!.length);
}
```

**GOOD:**
```dart
void foo(String? bar) {
  if (bar == null) throw ArgumentError.notNull('bar');
  print(bar.length);
}
```

**GOOD:**
```dart
void foo(String? bar) {
  print(bar?.length);
}
```

**GOOD:**
```dart
void foo(String? bar) {
  if (bar case final bar?) {
    print(bar.length);
  }
}
```