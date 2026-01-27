import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';
import 'package:fd_lints/src/utils/dart_type_extensions.dart';

/// {@template do_not_mutate_unmodifiable_list_view}
/// A lint that reports mutations on [UnmodifiableListView] instances.
///
/// **BAD:**
/// ```dart
/// void foo() {
///   var listView = UnmodifiableListView([1, 2, 3]);
///   listView.add(4); // Mutation
/// }
/// ```
/// {@endtemplate}
class DoNotMutateUnmodifiableListView extends AnalysisRule {
  /// {@macro do_not_mutate_unmodifiable_list_view}
  DoNotMutateUnmodifiableListView()
      : super(
          name: _code.name,
          description: _code.problemMessage,
        );

  static const _code = LintCode(
    'do_not_mutate_unmodifiable_list_view',
    'Do not mutate UnmodifiableListView instances.',
    severity: DiagnosticSeverity.ERROR,
  );

  @override
  DiagnosticCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    final visitor = _Visitor(this, context);
    registry.addMethodInvocation(this, visitor);
    registry.addAssignmentExpression(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule, this.context);

  final DoNotMutateUnmodifiableListView rule;
  final RuleContext context;

  @override
  void visitMethodInvocation(MethodInvocation node) {
    if (node.realTarget?.staticType
        case DartType(typeName: 'UnmodifiableListView')) {
      // List of mutating methods in UnmodifiableListView
      const mutatingMethods = {
        'add',
        'addAll',
        'clear',
        'fillRange',
        'insert',
        'insertAll',
        'remove',
        'removeAt',
        'removeLast',
        'removeRange',
        'removeWhere',
        'replaceRange',
        'retainWhere',
        'setAll',
        'setRange',
        'shuffle',
        'sort',
      };

      if (mutatingMethods.contains(node.methodName.name)) {
        rule.reportAtNode(node);
      }
    }
  }

  @override
  void visitAssignmentExpression(AssignmentExpression node) {
    if (node.leftHandSide
        case IndexExpression(
          realTarget: Expression(
            staticType: DartType(typeName: 'UnmodifiableListView')
          )
        )) {
      rule.reportAtNode(node);
    }
  }
}
