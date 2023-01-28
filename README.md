# fd_lints

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

An opiniated set of lint rules for Dart and Flutter projects. Made by yours truly Floating Dartists.

You can use 2 different sets of rules:

* `analysis_options`: for Dart projects
* `flutter`: for Flutter projects (includes `analysis_options` rules)

## Install

Add the version you want to your `pubspec.yaml`:

```yaml
dev_dependencies:
  fd_lints: ^1.0.0
```

Creates an `analysis_options.yaml` file in the root of your project and add the following content:

```yaml
include: package:fd_lints/analysis_options.yaml # For Dart projects
# include: package:fd_lints/flutter.yaml # For Flutter projects
```
