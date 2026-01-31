import 'package:analyzer_testing/analysis_rule/analysis_rule.dart';

import 'fixture_reader.dart';

mixin DartDependencyMixin on AnalysisRuleTest {
  void createDartMock() {
    final collectionPath = convertPath('/sdk/lib/collection/collection.dart');
    newFile(collectionPath, mockFixtureReader('collection.dart'));
  }
}
