import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';
import 'package:fd_lints/src/lints/avoid_as.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

@reflectiveTest
class AvoidAsTest extends AnalysisRuleTest {
  @override
  void setUp() {
    rule = AvoidAs();
    super.setUp();
  }

  void test_has_as_used() async {
    await assertDiagnostics(
      r'''
void f(Object x) {
  print(x as String);
} 
''',
      [lint(27, 11)],
    );
  }
}

void main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(AvoidAsTest);
  });
}
