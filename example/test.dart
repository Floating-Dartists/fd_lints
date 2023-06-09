void main() {
  final test = Test();
  print(test.foo);

  final test2 = Test2();
  print(test2.foo);
}

class Test {
  Test() {
    foo = 'bar';
  }

  late final String foo; // NO LINT: Because assigned in the constructor's body.
}

class Test2 {
  late final String foo; // LINT
}

class Test3 {
  late final String foo; // NO LINT: Because assigned in a method.

  void baz() => foo = 'bar';
}

class Test4 {
  Test4() : foo = 'bar';

  // TODO(TesteurManiak): lint is triggered here, but it shouldn't.
  late final String foo; // NO LINT: Because assigned in the constructor.
}
