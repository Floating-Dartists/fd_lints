---
title: avoid_non_null_assertion
tags: rules
---
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

## Usage

To disable this lint in your project add this to your package's **analysis_options.yaml** file:

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
    rules:
        - avoid_non_null_assertion: false
```