import 'dart:io';

String fixtureReader(String testAsset) {
  final file = File('test/test_files/$testAsset');
  return file.readAsStringSync();
}
