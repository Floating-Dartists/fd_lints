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

  void test_index_assign() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_index_assign.dart'),
      [lint(92, 11)],
    );
  }

  void test_add_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_add_all.dart'),
      [lint(92, 19)],
    );
  }

  void test_clear() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_clear.dart'),
      [lint(92, 12)],
    );
  }

  void test_fill_range() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_fill_range.dart'),
      [lint(92, 23)],
    );
  }

  void test_insert() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_insert.dart'),
      [lint(92, 17)],
    );
  }

  void test_insert_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_insert_all.dart'),
      [lint(92, 25)],
    );
  }

  void test_remove() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_remove.dart'),
      [lint(92, 14)],
    );
  }

  void test_remove_at() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_remove_at.dart'),
      [lint(92, 16)],
    );
  }

  void test_remove_last() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_remove_last.dart'),
      [lint(92, 17)],
    );
  }

  void test_remove_range() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_remove_range.dart'),
      [lint(92, 22)],
    );
  }

  void test_remove_where() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_remove_where.dart'),
      [lint(92, 30)],
    );
  }

  void test_replace_range() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_replace_range.dart'),
      [lint(92, 28)],
    );
  }

  void test_retain_where() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_retain_where.dart'),
      [lint(92, 31)],
    );
  }

  void test_set_all() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_set_all.dart'),
      [lint(92, 25)],
    );
  }

  void test_set_range() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_set_range.dart'),
      [lint(92, 27)],
    );
  }

  void test_shuffle() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_shuffle.dart'),
      [lint(92, 14)],
    );
  }

  void test_sort() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_list_sort.dart'),
      [lint(92, 11)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(DoNotMutateUnmodifiableListViewTest);
  });
}
