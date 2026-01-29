import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_set_view.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/fixture_reader.dart';

@reflectiveTest
class DoNotMutateUnmodifiableSetViewTest extends AnalysisRuleTest {
  @override
  void setUp() {
    rule = DoNotMutateUnmodifiableSetView();
    super.setUp();
  }

  void test_add() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_add.dart'),
      [lint(62, 11)],
    );
  }

  void test_add_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_add_all.dart'),
      [lint(62, 19)],
    );
  }

  void test_clear() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_clear.dart'),
      [lint(62, 12)],
    );
  }

  void test_remove() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_remove.dart'),
      [lint(62, 14)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(DoNotMutateUnmodifiableSetViewTest);
  });
}
