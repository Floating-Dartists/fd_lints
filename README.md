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

| **Rule**                                                 | **Severity**         |
|----------------------------------------------------------|----------------------|
| always_use_package_imports                               | :information_source: |
| avoid_dynamic_calls                                      | :information_source: |
| avoid_empty_else                                         | :information_source: |
| avoid_relative_lib_imports                               | :information_source: |
| avoid_slow_async_io                                      | :warning:            |
| avoid_types_as_parameter_names                           | :information_source: |
| cancel_subscriptions                                     | :warning:            |
| close_sinks                                              | :warning:            |
| control_flow_in_finally                                  | :information_source: |
| collection_methods_unrelated_type                        | :x:                  |
| empty_statements                                         | :information_source: |
| hash_and_equals                                          | :warning:            |
| iterable_contains_unrelated_type                         | :x:                  |
| list_remove_unrelated_type                               | :x:                  |
| literal_only_boolean_expressions                         | :information_source: |
| no_duplicate_case_values                                 | :information_source: |
| prefer_void_to_null                                      | :information_source: |
| test_types_in_equals                                     | :warning:            |
| unnecessary_statements                                   | :information_source: |
| unrelated_type_equality_checks                           | :x:                  |
| valid_regexps                                            | :information_source: |
| always_declare_return_types                              | :information_source: |
| annotate_overrides                                       | :information_source: |
| avoid_annotating_with_dynamic                            | :warning:            |
| avoid_bool_literals_in_conditional_expressions           | :information_source: |
| avoid_catching_errors                                    | :warning:            |
| avoid_classes_with_only_static_members                   | :information_source: |
| avoid_double_and_int_checks                              | :information_source: |
| avoid_equals_and_hash_code_on_mutable_classes            | :information_source: |
| avoid_escaping_inner_quotes                              | :information_source: |
| avoid_field_initializers_in_const_classes                | :information_source: |
| avoid_final_parameters                                   | :information_source: |
| avoid_init_to_null                                       | :information_source: |
| avoid_multiple_declarations_per_line                     | :information_source: |
| avoid_null_checks_in_equality_operators                  | :warning:            |
| avoid_positional_boolean_parameters                      | :information_source: |
| avoid_redundant_argument_values                          | :information_source: |
| avoid_renaming_method_parameters                         | :information_source: |
| avoid_return_types_on_setters                            | :information_source: |
| avoid_returning_null_for_void                            | :information_source: |
| avoid_shadowing_type_parameters                          | :warning:            |
| avoid_single_cascade_in_expression_statements            | :information_source: |
| avoid_unused_constructor_parameters                      | :information_source: |
| avoid_void_async                                         | :warning:            |
| await_only_futures                                       | :x:                  |
| camel_case_extensions                                    | :information_source: |
| camel_case_types                                         | :information_source: |
| cascade_invocations                                      | :information_source: |
| cast_nullable_to_non_nullable                            | :x:                  |
| combinators_ordering                                     | :information_source: |
| conditional_uri_does_not_exist                           | :x:                  |
| constant_identifier_names                                | :information_source: |
| curly_braces_in_flow_control_structures                  | :information_source: |
| deprecated_consistency                                   | :information_source: |
| directives_ordering                                      | :information_source: |
| empty_catches                                            | :information_source: |
| empty_constructor_bodies                                 | :information_source: |
| eol_at_end_of_file                                       | :information_source: |
| exhaustive_cases                                         | :warning:            |
| file_names                                               | :information_source: |
| implementation_imports                                   | :information_source: |
| implicit_call_tearoffs                                   | :information_source: |
| join_return_with_assignment                              | :information_source: |
| leading_newlines_in_multiline_strings                    | :information_source: |
| library_names                                            | :information_source: |
| library_prefixes                                         | :information_source: |
| library_private_types_in_public_api                      | :information_source: |
| no_leading_underscores_for_library_prefixes              | :information_source: |
| no_leading_underscores_for_local_identifiers             | :information_source: |
| no_runtimeType_toString                                  | :warning:            |
| non_constant_identifier_names                            | :information_source: |
| noop_primitive_operations                                | :information_source: |
| null_check_on_nullable_type_parameter                    | :x:                  |
| null_closures                                            | :x:                  |
| omit_local_variable_types                                | :information_source: |
| only_throw_errors                                        | :warning:            |
| overridden_fields                                        | :information_source: |
| package_prefixed_library_names                           | :information_source: |
| parameter_assignments                                    | :warning:            |
| prefer_adjacent_string_concatenation                     | :information_source: |
| prefer_asserts_in_initializer_lists                      | :information_source: |
| prefer_collection_literals                               | :information_source: |
| prefer_conditional_assignment                            | :information_source: |
| prefer_const_constructors                                | :information_source: |
| prefer_const_declarations                                | :information_source: |
| prefer_constructors_over_static_methods                  | :information_source: |
| prefer_contains                                          | :warning:            |
| prefer_expression_function_bodies                        | :information_source: |
| prefer_final_fields                                      | :information_source: |
| prefer_final_in_for_each                                 | :information_source: |
| prefer_final_locals                                      | :information_source: |
| prefer_for_elements_to_map_fromIterable                  | :warning:            |
| prefer_function_declarations_over_variables              | :information_source: |
| prefer_generic_function_type_aliases                     | :information_source: |
| prefer_if_elements_to_conditional_expressions            | :information_source: |
| prefer_if_null_operators                                 | :information_source: |
| prefer_initializing_formals                              | :information_source: |
| prefer_inlined_adds                                      | :information_source: |
| prefer_int_literals                                      | :information_source: |
| prefer_interpolation_to_compose_strings                  | :information_source: |
| prefer_is_empty                                          | :warning:            |
| prefer_is_not_empty                                      | :warning:            |
| prefer_is_not_operator                                   | :information_source: |
| prefer_iterable_whereType                                | :information_source: |
| prefer_mixin                                             | :information_source: |
| prefer_null_aware_method_calls                           | :x:                  |
| prefer_null_aware_operators                              | :x:                  |
| prefer_spread_collections                                | :information_source: |
| prefer_typing_uninitialized_variables                    | :x:                  |
| provide_deprecation_message                              | :information_source: |
| recursive_getters                                        | :x:                  |
| require_trailing_commas                                  | :information_source: |
| slash_for_doc_comments                                   | :information_source: |
| sort_constructors_first                                  | :information_source: |
| sort_unnamed_constructors_first                          | :information_source: |
| tighten_type_of_initializing_formals                     | :x:                  |
| type_annotate_public_apis                                | :x:                  |
| type_init_formals                                        | :information_source: |
| unawaited_futures                                        | :warning:            |
| unnecessary_await_in_return                              | :information_source: |
| unnecessary_brace_in_string_interps                      | :information_source: |
| unnecessary_const                                        | :information_source: |
| unnecessary_constructor_name                             | :information_source: |
| unnecessary_getters_setters                              | :information_source: |
| unnecessary_lambdas                                      | :information_source: |
| unnecessary_late                                         | :information_source: |
| unnecessary_new                                          | :information_source: |
| unnecessary_null_aware_assignments                       | :information_source: |
| unnecessary_null_aware_operator_on_extension_on_nullable | :information_source: |
| unnecessary_null_checks                                  | :information_source: |
| unnecessary_null_in_if_null_operators                    | :information_source: |
| unnecessary_nullable_for_final_variable_declarations     | :information_source: |
| unnecessary_overrides                                    | :information_source: |
| unnecessary_parenthesis                                  | :information_source: |
| unnecessary_raw_strings                                  | :information_source: |
| unnecessary_string_escapes                               | :information_source: |
| unnecessary_string_interpolations                        | :information_source: |
| unnecessary_this                                         | :information_source: |
| unnecessary_to_list_in_spreads                           | :information_source: |
| use_enums                                                | :warning:            |
| use_function_type_syntax_for_parameters                  | :information_source: |
| use_if_null_to_convert_nulls_to_bools                    | :information_source: |
| use_is_even_rather_than_modulo                           | :information_source: |
| use_late_for_private_fields_and_variables                | :information_source: |
| use_named_constants                                      | :information_source: |
| use_rethrow_when_possible                                | :information_source: |
| use_setters_to_change_properties                         | :information_source: |
| use_string_buffers                                       | :warning:            |
| use_string_in_part_of_directives                         | :information_source: |
| use_super_parameters                                     | :information_source: |
| use_test_throws_matchers                                 | :information_source: |
| void_checks                                              | :information_source: |
| invalid_use_of_visible_for_testing_member                | :x:                  |
| missing_return                                           | :x:                  |
| missing_required_param                                   | :x:                  |


### Flutter

| **Rule**                                   | **Severity**         |
|--------------------------------------------|----------------------|
| avoid_print                                | :information_source: |
| avoid_web_libraries_in_flutter             | :information_source: |
| avoid_unnecessary_containers               | :information_source: |
| no_logic_in_create_state                   | :information_source: |
| use_build_context_synchronously            | :x:                  |
| use_key_in_widget_constructors             | :information_source: |
| avoid_function_literals_in_foreach_calls   | :information_source: |
| avoid_js_rounded_ints                      | :warning:            |
| sized_box_for_whitespace                   | :information_source: |
| sized_box_shrink_expand                    | :information_source: |
| sort_child_properties_last                 | :information_source: |
| use_colored_box                            | :information_source: |
| use_decorated_box                          | :information_source: |
| use_full_hex_values_for_flutter_colors     | :warning:            |
| prefer_const_constructors_in_immutables    | :information_source: |
| prefer_const_literals_to_create_immutables | :information_source: |
