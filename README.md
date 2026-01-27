# fd_lints

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

[![Pub Version](https://img.shields.io/pub/v/fd_lints)](https://pub.dev/packages/fd_lints)

An opiniated set of lint rules for Dart and Flutter projects. Made by yours truly Floating Dartists.

You can use 2 different sets of rules:

* `dart`: for Dart projects
* `flutter`: for Flutter projects (includes `dart` rules)

## Installing fd_lints

fd_lints is implemented using [analysis_server_plugin]. As such, it is installed through `analysis_options.yaml`

Long story short, create an `analysis_options.yaml` next to your `pubspec.yaml` and add:

```yaml
plugins:
  fd_lints: <version number>
```

## Running fd_lints in the terminal/CI

Once `fd_lints` is installed, `dart analyze` will show warnings
from the lint rules created by fd_lints.

Since your project should already have `fd_lints` installed
(cf [installing fd_lints](#installing-fd_lints)), then you should be
able to run:

```sh
dart analyze
```

## Analyzer

### Language

Stricter type check is enabled by default. Applying the following rules:

* `strict-casts`
* `strict-inference`
* `strict-raw-types`

## Linter rules

* :information_source: : info
* :warning: : warning
* :x: : error

| **Rule**                                                              | **Severity**         |
|-----------------------------------------------------------------------|----------------------|
| [avoid_non_null_assertion][avoid_non_null_assertion_link]             | :warning:            |
| [avoid_as][avoid_as_link]                                             | :warning:            |


[avoid_non_null_assertion_link]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/avoid_non_null_assertion.md
[avoid_as_link]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/avoid_as.md
[freezed_link]: https://pub.dev/packages/freezed
[mockito_link]: https://pub.dev/packages/mockito
[dart_mappable_link]: https://pub.dev/packages/dart_mappable
[theme_tailor_link]: https://pub.dev/packages/theme_tailor