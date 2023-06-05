import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidAs extends DartLintRule {
  AvoidAs() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_as',
    problemMessage: 'Avoid using the "as" operator.',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addAsExpression((node) {
      reporter.reportErrorForNode(code, node);
    });
  }
}
