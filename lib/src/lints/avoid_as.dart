import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_as}
/// A lint that reports the use of the "as" operator.
///
/// **BAD:**
/// ```dart
/// void foo(Object bar) {
///   print(bar as String);
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// void foo(Object bar) {
///  if (bar is String) {
///     print(bar);
///   }
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// void foo(Object bar) {
///   if (bar is! String) {
///     throw ArgumentError.value(bar, 'bar', 'Must be a String');
///   }
///   print(bar);
/// }
/// ```
/// {@endtemplate}
class AvoidAs extends DartLintRule {
  /// {@macro avoid_as}
  AvoidAs() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_as',
    problemMessage: 'Avoid using the "as" operator.',
    correctionMessage: 'Use "is", "is!" or pattern matching instead.',
    url:
        'https://github.com/Floating-Dartists/fd_lints/blob/main/doc/avoid_as.md',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addAsExpression((node) {
      reporter.atNode(node, code);
    });
  }
}
