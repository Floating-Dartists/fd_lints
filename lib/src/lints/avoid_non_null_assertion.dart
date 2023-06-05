import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// A lint that reports the use of the "bang" operator (!).
///
/// **BAD:**
/// ```dart
/// void foo(String? bar) {
///   print(bar!.length);
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// void foo(String? bar) {
///   if (bar == null) throw NullThrownError();
///   print(bar.length);
/// }
/// ```
class AvoidNonNullAssertion extends DartLintRule {
  AvoidNonNullAssertion() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_non_null_assertion',
    problemMessage: 'Avoid using the "bang" operator (!).',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addPostfixExpression((node) {
      if (node.operator.lexeme == '!') {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
