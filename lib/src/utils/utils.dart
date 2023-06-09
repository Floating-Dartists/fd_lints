import 'package:analyzer/dart/ast/ast.dart';

extension FieldDeclarationExtensions on FieldDeclaration {
  /// Returns `true` if the field is late.
  bool get isLate => fields.isLate;

  /// Returns `true` if the field is assigned.
  bool get isAssigned => fields.variables.any((e) => e.initializer != null);
}
