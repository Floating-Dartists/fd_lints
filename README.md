# fd_lints

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

[![Pub Version](https://img.shields.io/pub/v/fd_lints)](https://pub.dev/packages/fd_lints)

An opiniated set of lint rules for Dart and Flutter projects. Made by yours truly Floating Dartists.

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

## Linter rules

* :information_source: : info
* :warning: : warning
* :x: : error

| **Rule**                                                              | **Severity**         |
|-----------------------------------------------------------------------|----------------------|
| [avoid_non_null_assertion]                                            | :warning:            |
| [avoid_as]                                                            | :warning:            |
| [do_not_mutate_unmodifiable_list_view]                                | :error:              |
| [do_not_mutate_unmodifiable_map_view]                                 | :error:              |
| [do_not_mutate_unmodifiable_set_view]                                 | :error:              |


[avoid_non_null_assertion]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/avoid_non_null_assertion.md
[avoid_as]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/avoid_as.md
[do_not_mutate_unmodifiable_list_view]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/do_not_mutate_unmodifiable_list_view.md
[do_not_mutate_unmodifiable_map_view]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/do_not_mutate_unmodifiable_map_view.md
[do_not_mutate_unmodifiable_set_view]: https://github.com/Floating-Dartists/fd_lints/blob/main/doc/do_not_mutate_unmodifiable_set_view.md
[analysis_server_plugin]: https://pub.dev/packages/analysis_server_plugin