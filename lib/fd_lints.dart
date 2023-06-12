import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:fd_lints/src/lints/avoid_as.dart';
import 'package:fd_lints/src/lints/avoid_non_null_assertion.dart';
import 'package:fd_lints/src/lints/avoid_unassigned_late_fields.dart';

PluginBase createPlugin() => _FDLintsPlugin();

class _FDLintsPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      AvoidAs(),
      AvoidNonNullAssertion(),
      AvoidUnassignedLateFields(),
    ];
  }
}
