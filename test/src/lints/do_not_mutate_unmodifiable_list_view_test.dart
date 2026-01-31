import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_list_view.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/dart_dependency_mixin.dart';
import '../../utils/fixture_reader.dart';

@reflectiveTest
class DoNotMutateUnmodifiableListViewTest extends AnalysisRuleTest
    with DartDependencyMixin {
  @override
  void setUp() {
    rule = DoNotMutateUnmodifiableListView();
    super.setUp();

    createDartMock();
  }

  void test_add() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_add.dart'),
      [lint(92, 11)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(DoNotMutateUnmodifiableListViewTest);
  });
}
