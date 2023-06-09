import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:fd_lints/src/utils/utils.dart';

/// {@template avoid_unassigned_late_fields}
/// Warns when a late field is not assigned a value.
///
/// **BAD:**
/// ```dart
/// class LateClass {
///  late final String foo = 'foo';
///
///  late final String bar; // LINT
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// class LateClass {
///   LateClase() {
///     bar = 'bar';
///   }
///
///   late final String foo = 'foo';
///
///   late final String bar;
/// }
/// ```
class AvoidUnassignedLateFields extends DartLintRule {
  AvoidUnassignedLateFields() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_unassigned_late_fields',
    problemMessage: 'Avoid unassigned late fields.',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addFieldDeclaration((node) {
      if (node.isLate && !node.isAssigned) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
