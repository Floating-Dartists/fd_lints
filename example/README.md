## pubspec.yaml

```yaml
name: example
description: Example of using fd_lints
version: 1.0.0

environment:
  sdk: ">=2.18.0 <3.0.0"

dev_dependencies:
  fd_lints: ^2.0.1
```

## analysis_options.yaml

```yaml
include: package:fd_lints/dart.yaml

analyzer:
  plugins:
    - custom_lint
```