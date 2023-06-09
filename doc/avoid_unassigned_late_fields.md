# avoid_unassigned_late_fields

**AVOID** late fields that are unassigned inside their own class's constructor or method.

**BAD:**
```dart
class Foo {
  late final int bar;
}
```

**GOOD:**
```dart
class Foo {
  late final int bar;

  Foo() {
    bar = 42;
  }
}
```

**GOOD:**
```dart
class Foo {
  late final int bar;

  void baz() {
    bar = 24;
  }
}
```

**GOOD:**
```dart
class Foo {
  late final int bar;

  Foo() : bar = 42;
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
        - avoid_unassigned_late_fields: false
```