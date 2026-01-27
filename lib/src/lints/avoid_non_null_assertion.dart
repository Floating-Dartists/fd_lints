import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/error/error.dart';

/// {@template avoid_non_null_assertion}
/// A lint that reports the use of the non-null assertion operator (!).
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
///   if (bar == null) throw ArgumentError.notNull('bar');
///   print(bar.length);
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// void foo(String? bar) {
///   print(bar?.length);
/// }
/// ```
///
/// **GOOD:**
/// ```dart
/// void foo(String? bar) {
///   if (bar case final bar?) {
///     print(bar.length);
///   }
/// }
/// ```
/// {@endtemplate}
class AvoidNonNullAssertion extends AnalysisRule {
  /// {@macro avoid_non_null_assertion}
  AvoidNonNullAssertion()
      : super(name: _code.name, description: _code.problemMessage);

  static const _code = LintCode(
    'avoid_non_null_assertion',
    'Avoid using the non-null assertion operator (!).',
    correctionMessage: 'Use a null check operator or condition instead.',
    severity: DiagnosticSeverity.WARNING,
  );

  @override
  DiagnosticCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    final visitor = _Visitor(this);
    registry.addPostfixExpression(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule);

  final AvoidNonNullAssertion rule;

  @override
  void visitPostfixExpression(PostfixExpression node) {
    if (node.operator.lexeme == '!') {
      rule.reportAtNode(node);
    }
  }
}
