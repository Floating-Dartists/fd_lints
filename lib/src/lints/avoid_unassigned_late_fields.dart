import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:fd_lints/src/utils/utils.dart';

/// {@template avoid_unassigned_late_fields}
/// Warns when a late field is not assigned a value inside their class's
/// constructor or methods.
///
/// **BAD:**
/// ```dart
/// class Foo {
///   late final int bar;
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// class Foo {
///   late final int bar;
///
///   Foo() {
///     bar = 42;
///   }
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// class Foo {
///   late final int bar;
///
///   void baz() {
///     bar = 42;
///   }
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// class Foo {
///   late final int bar;
///
///   Foo() : bar = 42;
/// }
/// ```
/// {@endtemplate}
class AvoidUnassignedLateFields extends DartLintRule {
  /// {@macro avoid_unassigned_late_fields}
  AvoidUnassignedLateFields() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_unassigned_late_fields',
    problemMessage: 'Avoid unassigned late fields inside classes.',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addFieldDeclaration((node) {
      if (node.isLate && !node.isAssignedOnDeclaration) {
        final parent = node.parent;

        if (parent is ClassDeclaration) {
          final variables = node.fields.variables;
          final pattern = RegExp('${variables.first.name.lexeme} =');
          final constructors = parent.members.constructors;

          for (final constructor in constructors) {
            final initialized = constructor.fieldInitializers
                .where(
                  (e) =>
                      variables.any((v) => v.name.lexeme == e.fieldName.name),
                )
                .isNotEmpty;

            final body = constructor.body.toSource().contains(pattern);

            if (initialized || body) return;
          }

          final methods = parent.members.whereType<MethodDeclaration>();
          for (final method in methods) {
            final body = method.body.toSource().contains(pattern);

            if (body) return;
          }

          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }
}
