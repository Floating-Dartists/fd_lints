import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/do_not_mutate_unmodifiable_set_view.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/fixture_reader.dart';

@reflectiveTest
class DoNotMutateUnmodifiableSetViewTest extends AnalysisRuleTest {
  @override
  void setUp() {
    newPackage('dart:collection')
      ..addFile('lib/unmodifiable_set_view.dart', r'''
class UnmodifiableSetView<E> {
  UnmodifiableSetView(Set<E> source);
  
  bool add(E value) {}
}
''');
    rule = DoNotMutateUnmodifiableSetView();
    super.setUp();
  }

  void test_add() async {
    await assertDiagnostics(
      fixtureReader('unmodifiable_set_add.dart'),
      [lint(54, 19)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(DoNotMutateUnmodifiableSetViewTest);
  });
}
