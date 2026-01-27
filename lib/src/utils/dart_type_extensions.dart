import 'package:analyzer/dart/element/type.dart';

extension DartTypeExtensions on DartType {
  String get fullTypeName => getDisplayString();
  String get typeName => fullTypeName.removeGenericTypes();
}

extension on String {
  /// Remove generic types from a string. (e.g. `List<String>` -> `List`)
  String removeGenericTypes() {
    final regex = RegExp(r'<.*>');
    return replaceAll(regex, '');
  }
}
