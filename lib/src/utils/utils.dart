import 'package:analyzer/dart/ast/ast.dart';

extension FieldDeclarationExtensions on FieldDeclaration {
  /// Returns `true` if the field is late.
  bool get isLate => fields.isLate;

  /// Returns `true` if the field is assigned on declaration.
  bool get isAssignedOnDeclaration {
    return fields.variables.any((e) => e.initializer != null);
  }
}

extension ClassMembersExtensions on NodeList<ClassMember> {
  Iterable<ConstructorDeclaration> get constructors {
    return whereType<ConstructorDeclaration>();
  }
}

extension ConstructorDeclarationExtensions on ConstructorDeclaration {
  Iterable<ConstructorFieldInitializer> get fieldInitializers {
    return initializers.whereType<ConstructorFieldInitializer>();
  }
}
