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

### Dart

| **Rule**                          | **Severity**         |
|-----------------------------------|----------------------|
| always_use_package_imports        | :information_source: |
| avoid_dynamic_calls               | :information_source: |
| avoid_empty_else                  | :information_source: |
| avoid_relative_lib_imports        | :information_source: |
| avoid_slow_async_io               | :warning:            |
| avoid_types_as_parameter_names    | :information_source: |
| cancel_subscriptions              | :warning:            |
| close_sinks                       | :warning:            |
| control_flow_in_finally           | :information_source: |
| collection_methods_unrelated_type | :x:                  |
| empty_statements                  | :information_source: |
| hash_and_equals                   | :warning:            |
| iterable_contains_unrelated_type  | :x:                  |
| list_remove_unrelated_type        | :x:                  |
| literal_only_boolean_expressions  | :information_source: |
| no_duplicate_case_values          | :information_source: |
| prefer_void_to_null               | :information_source: |
| test_types_in_equals              | :warning:            |
| unnecessary_statements            | :information_source: |
| unrelated_type_equality_checks    | :x:                  |
| valid_regexps                     | :information_source: |
| always_declare_return_types       | :information_source: |
| annotate_overrides                | :information_source: |
| avoid_annotating_with_dynamic     | :warning:            |
| avoid_bool_literals_in_conditional_expressions | :information_source: |
| avoid_catching_errors             | :warning:            |
| avoid_classes_with_only_static_members | :information_source: |
| avoid_double_and_int_checks       | :information_source: |
| avoid_equals_and_hash_code_on_mutable_classes | :information_source: |
| avoid_escaping_inner_quotes       | :information_source: |
| avoid_field_initializers_in_const_classes | :information_source: |
| avoid_final_parameters            | :information_source: |
| avoid_init_to_null                | :information_source: |

:construction_worker: Section in construction :construction_worker:

### Flutter

| **Rule**                          | **Severity**         |
|-----------------------------------|----------------------|
| avoid_print                       | :information_source: |
| avoid_web_libraries_in_flutter    | :information_source: |
| avoid_unnecessary_containers      | :information_source: |
| no_logic_in_create_state          | :information_source: |
| use_build_context_synchronously   | :warning:            |
| use_key_in_widget_constructors    | :information_source: |
| avoid_function_literals_in_foreach_calls | :information_source: |
| avoid_js_rounded_ints             | :warning:            |
| sized_box_for_whitespace          | :information_source: |
| sized_box_shrink_expand           | :information_source: |
| sort_child_properties_last        | :information_source: |
| use_colored_box                   | :information_source: |
| use_decorated_box                 | :information_source: |
| use_full_hex_values_for_flutter_colors | :warning:       |
| prefer_const_constructors_in_immutables | :information_source: |
| prefer_const_literals_to_create_immutables | :information_source: |