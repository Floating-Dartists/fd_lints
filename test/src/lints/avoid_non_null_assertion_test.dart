import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/avoid_non_null_assertion.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../../utils/fixture_reader.dart';

@reflectiveTest
class AvoidNonNullAssertionTest extends AnalysisRuleTest {
  @override
  void setUp() {
    rule = AvoidNonNullAssertion();
    super.setUp();
  }

  void test_non_null_assertion_used() async {
    await assertDiagnostics(
      fixtureReader('non_null_assert.dart'),
      [lint(29, 2)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(AvoidNonNullAssertionTest);
  });
}
