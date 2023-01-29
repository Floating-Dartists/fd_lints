# fd_lints

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

An opiniated set of lint rules for Dart and Flutter projects. Made by yours truly Floating Dartists.

You can use 2 different sets of rules:

* `dart`: for Dart projects
* `flutter`: for Flutter projects (includes `dart` rules)

## Install

Add the version you want to your `pubspec.yaml`:

```yaml
dev_dependencies:
  fd_lints: ^1.0.0
```

Creates an `analysis_options.yaml` file in the root of your project and add the following content:

```yaml
include: package:fd_lints/dart.yaml # For Dart projects
# include: package:fd_lints/flutter.yaml # For Flutter projects
```

## Analyzer

### Language

Stricter type check is enabled by default. Applying the following rules:

* `strict-casts`
* `strict-inference`
* `strict-raw-types`

### Exclude

The following files are excluded by default:

* `lib/**.g.dart`
* `lib/**.freezed.dart`
* `test/**.mocks.dart`

## Linter rules

* :information_source: : info
* :warning: : warning
* :x: : error

## Dart

| **Rule**                          | **Severity**         |
|-----------------------------------|----------------------|
| always_use_package_imports        | :information_source: |
| avoid_dynamic_calls               | :information_source: |
| avoid_empty_else                  | :information_source: |
| avoid_relative_lib_imports        | :information_source: |
| avoid_slow_async_io               | :warning:            |
| avoid_types_as_parameter_names    | :information_source: |
| cancel_subscriptions              | :information_source: |
| close_sinks                       | :information_source: |
| collection_methods_unrelated_type | :information_source: |
| empty_statements                  | :information_source: |
| hash_and_equals                   | :information_source: |
| iterable_contains_unrelated_type  | :information_source: |
| list_remove_unrelated_type        |                      |
| literal_only_boolean_expressions  |                      |
| no_duplicate_case_values          |                      |
| prefer_void_to_null               |                      |
| test_types_in_equals              |                      |
| unnecessary_statements            |                      |
| unrelated_type_equality_checks    |                      |
| valid_regexps                     |                      |
| always_declare_return_types       |                      |
| annotate_overrides                |                      |
| avoid_annotating_with_dynamic     |                      |
| avoid_bool_literals_in_conditional_expressions |                      |
| avoid_catching_errors             |                      |
| avoid_classes_with_only_static_members |                      |

:construction_worker: Work in progress

## Flutter

:construction_worker: Work in progress