import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';
import 'package:fd_lints/src/utils/dart_type_extensions.dart';

/// {@template do_not_mutate_unmodifiable_set_view}
/// A lint that reports mutations on `UnmodifiableSetView` instances.
///
/// **BAD:**
/// ```dart
/// void foo() {
///  var setView = UnmodifiableSetView({1, 2, 3});
///  setView.add(4); // Throws
/// }
/// ```
/// {@endtemplate}
class DoNotMutateUnmodifiableSetView extends AnalysisRule {
  /// {@macro do_not_mutate_unmodifiable_set_view}
  DoNotMutateUnmodifiableSetView()
      : super(
          name: _code.name,
          description: _code.problemMessage,
        );

  static const _code = LintCode(
    'do_not_mutate_unmodifiable_set_view',
    'Do not mutate UnmodifiableSetView instances.',
    severity: DiagnosticSeverity.ERROR,
  );

  @override
  DiagnosticCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
      RuleVisitorRegistry registry, RuleContext context) {
    final visitor = _Visitor(this);
    registry.addMethodInvocation(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule);

  final DoNotMutateUnmodifiableSetView rule;

  @override
  void visitMethodInvocation(MethodInvocation node) {
    if (node.realTarget?.staticType
        case DartType(typeName: 'UnmodifiableSetView')) {
      // List of mutating methods in UnmodifiableSetView
      const mutatingMethods = {
        'add',
        'addAll',
        'clear',
        'remove',
        'removeAll',
        'removeWhere',
        'retainAll',
        'retainWhere',
      };

      if (mutatingMethods.contains(node.methodName.name)) {
        rule.reportAtNode(node);
      }
    }
  }
}
