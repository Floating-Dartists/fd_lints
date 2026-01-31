import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_set_view.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/dart_dependency_mixin.dart';
import '../../utils/fixture_reader.dart';

@reflectiveTest
class DoNotMutateUnmodifiableSetViewTest extends AnalysisRuleTest
    with DartDependencyMixin {
  @override
  void setUp() {
    rule = DoNotMutateUnmodifiableSetView();
    super.setUp();

    createDartMock();
  }

  void test_add() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_add.dart'),
      [lint(91, 11)],
    );
  }

  void test_add_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_add_all.dart'),
      [lint(91, 19)],
    );
  }

  void test_clear() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_clear.dart'),
      [lint(91, 12)],
    );
  }

  void test_remove() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_remove.dart'),
      [lint(91, 14)],
    );
  }

  void test_remove_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_remove_all.dart'),
      [lint(91, 22)],
    );
  }

  void test_remove_where() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_remove_where.dart'),
      [lint(91, 30)],
    );
  }

  void test_retain_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_retain_all.dart'),
      [lint(91, 22)],
    );
  }

  void test_retain_where() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_retain_where.dart'),
      [lint(91, 31)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(DoNotMutateUnmodifiableSetViewTest);
  });
}
