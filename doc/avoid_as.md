# avoid_as

**AVOID** using the `as` operator.

**BAD:**
```dart
void foo(Object bar) {
  print(bar as String);
}
```

**GOOD:**
```dart
void foo(Object bar) {
 if (bar is String) {
    print(bar);
  }
}
```

**GOOD:**
```dart
void foo(Object bar) {
  if (bar is! String) {
    throw ArgumentError.value(bar, 'bar', 'Must be a String');
  }
  print(bar);
}
```

**GOOD:**
```dart
void foo(Object bar) {
  switch (bar) {
    case String():
      print(bar);
  }
}
```

**GOOD:**
```dart
void foo(Object bar) {
  if (bar case final String bar) {
    print(bar);
  }
}
```

## Usage

To disable this lint in your project add this to your package's **analysis_options.yaml** file:

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
    rules:
        - avoid_as: false
```