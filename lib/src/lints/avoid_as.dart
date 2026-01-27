import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/error/error.dart';

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
class AvoidAs extends AnalysisRule {
  /// {@macro avoid_as}
  AvoidAs() : super(name: _code.name, description: _code.problemMessage);

  static const _code = LintCode(
    'avoid_as',
    'Avoid using the "as" operator.',
    correctionMessage: 'Use "is", "is!" or pattern matching instead.',
    severity: DiagnosticSeverity.WARNING,
  );

  @override
  DiagnosticCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    final visitor = _Visitor(this, context);
    registry.addAsExpression(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule, this.context);

  final AvoidAs rule;
  final RuleContext context;

  @override
  void visitAsExpression(AsExpression node) => rule.reportAtNode(node);
}
