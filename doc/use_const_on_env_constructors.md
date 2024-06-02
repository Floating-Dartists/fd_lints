# use_const_on_env_constructors

You can't use an environment constructor if it's not a constant.

**BAD:**
```dart
final foo = String.fromEnvironment('foo');
```

**GOOD:**
```dart
const foo = String.fromEnvironment('foo');
```

**GOOD:**
```dart
final foo = const String.fromEnvironment('foo');
```

## Usage

To disable this lint in your project add this to your package's **analysis_options.yaml** file:

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
    rules:
        - use_const_on_env_constructors: false
```