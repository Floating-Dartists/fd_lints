import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template use_const_on_env_constructors}
/// A lint that reports the use of the `const` keyword on `fromEnvironment`
/// constructors. ([String.fromEnvironment], [int.fromEnvironment],
/// [bool.fromEnvironment] etc.)
///
/// **BAD:**
/// ```dart
/// final foo = String.fromEnvironment('foo');
/// ```
///
/// **GOOD:**
/// ```dart
/// const foo = String.fromEnvironment('foo');
/// ```
/// {@endtemplate}
class UseConstOnEnvConstructors extends DartLintRule {
  /// {@macro use_const_on_env_constructors}
  UseConstOnEnvConstructors() : super(code: _code);

  static const _code = LintCode(
    name: 'use_const_on_env_constructors',
    problemMessage: 'fromEnvironment constructors can only be used as `const`.',
    correctionMessage: 'Use `const` or `final const` instead.',
    url:
        'https://github.com/Floating-Dartists/fd_lints/blob/main/doc/use_const_on_env_constructors.md',
    errorSeverity: ErrorSeverity.ERROR,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addInstanceCreationExpression((node) {
      if (node.constructorName.name?.name == 'fromEnvironment' &&
          !node.isConst) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
