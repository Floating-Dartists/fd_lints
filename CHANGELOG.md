## 2.5.0

* chore(deps): bump analyzer_plugin from 0.12.0 to 0.13.0 by @dependabot in https://github.com/Floating-Dartists/fd_lints/pull/14

**Full Changelog**: https://github.com/Floating-Dartists/fd_lints/compare/2.4.0...2.5.0

## 2.4.0

* chore(deps): bump custom_lint_builder, analyzer_plugin and analyzer by @dependabot in https://github.com/Floating-Dartists/fd_lints/pull/13
* Fixed linting rules by hiding `LintCode` from `package:analyzer/error/error.dart`
* Replaced deprecated usage of `reportErrorForNode` by `atNode` in custom rules
* Added rules to core `dart.yaml` file:
    * `document_ignores`: Document ignore comments.
    * `unnecessary_underscores`: Unnecessary underscores can be removed.

**Full Changelog**: https://github.com/Floating-Dartists/fd_lints/compare/2.3.1...2.4.0

## 2.3.1

* Bump `analyzer` dependency to: `">=6.0.0 <7.0.0"`

## 2.3.0

* Bump dependencies
* Added rule [use_const_on_env_constructors](https://github.com/Floating-Dartists/fd_lints/blob/main/doc/use_const_on_env_constructors.md)

## 2.2.1

* Bump dependencies

## 2.2.0

* Updated `analyzer` dependency constraints to `">=5.12.0 <7.0.0"`
* Updated `custom_lint_builder` dependency constraints to `">=0.5.2 <0.6.0"`

## 2.1.0

* Updated documentation of the package
* Upgraded [`custom_lint`][custom_lint] `0.4.0`->`0.5.0`

## 2.0.1

* Updated documentation of custom rules

## 2.0.0

* Added rule [flutter_style_todos](https://dart-lang.github.io/linter/lints/flutter_style_todos.html)
* Created custom rules with the package [custom_lint][custom_lint]
    * `avoid_as`: Avoid using `as` keyword :warning:
    * `avoid_non_null_assertion`: Avoid using `!` operator :warning:

## 1.1.1

* Added rule invalid_annotation_target as ignored

## 1.1.0

* Updated Dart SDK constraints to: `">=2.18.0 <4.0.0"`
* Added rule [unnecessary_breaks](https://dart-lang.github.io/linter/lints/unnecessary_breaks.html)

## 1.0.2

* Removed rule [omit_local_variable_types](https://dart-lang.github.io/linter/lints/omit_local_variable_types.html)

## 1.0.1

* Removed rule [prefer_expression_function_bodies](https://dart-lang.github.io/linter/lints/prefer_expression_function_bodies.html)

## 1.0.0

* Initial version.

[custom_lint]: https://pub.dev/packages/custom_lint