import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';
import 'package:fd_lints/src/utils/dart_type_extensions.dart';

/// {@template do_not_mutate_unmodifiable_map_view}
/// A lint that reports mutations on `UnmodifiableMapView` instances.
///
/// **BAD:**
/// ```dart
/// void foo() {
///  var mapView = UnmodifiableMapView({'a': 1, 'b': 2});
///  mapView['c'] = 3; // Throws
/// }
/// ```
/// {@endtemplate}
class DoNotMutateUnmodifiableMapView extends AnalysisRule {
  /// {@macro do_not_mutate_unmodifiable_map_view}
  DoNotMutateUnmodifiableMapView()
      : super(
          name: _code.name,
          description: _code.problemMessage,
        );

  static const _code = LintCode(
    'do_not_mutate_unmodifiable_map_view',
    'Do not mutate UnmodifiableMapView instances.',
    severity: DiagnosticSeverity.ERROR,
  );

  @override
  DiagnosticCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
      RuleVisitorRegistry registry, RuleContext context) {
    final visitor = _Visitor(this, context);
    registry.addMethodInvocation(this, visitor);
    registry.addAssignmentExpression(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule, this.context);

  final DoNotMutateUnmodifiableMapView rule;
  final RuleContext context;

  @override
  void visitMethodInvocation(MethodInvocation node) {
    if (node.realTarget?.staticType
        case DartType(typeName: 'UnmodifiableMapView')) {
      // List of mutating methods in UnmodifiableMapView
      const mutatingMethods = {
        'addAll',
        'addEntries',
        'clear',
        'putIfAbsent',
        'remove',
        'removeWhere',
        'update',
        'updateAll',
      };

      if (mutatingMethods.contains(node.methodName.name)) {
        rule.reportAtNode(node);
      }
    }
  }

  @override
  void visitAssignmentExpression(AssignmentExpression node) {
    final leftSide = node.leftHandSide;
    if (leftSide
        case IndexExpression(
          realTarget: Expression(
            staticType: DartType(typeName: 'UnmodifiableMapView')
          )
        )) {
      rule.reportAtNode(node);
    }
  }
}
