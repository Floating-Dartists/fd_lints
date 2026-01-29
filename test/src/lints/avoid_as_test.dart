import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/avoid_as.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/fixture_reader.dart';

@reflectiveTest
class AvoidAsTest extends AnalysisRuleTest {
  @override
  void setUp() {
    rule = AvoidAs();
    super.setUp();
  }

  void test_has_as_used() async {
    await assertDiagnostics(
      fixtureReader('avoid_as.dart'),
      [lint(28, 11)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(AvoidAsTest);
  });
}
