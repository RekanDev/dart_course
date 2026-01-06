void main() {
  B bInstance = B();
  C cInstance = C();

  // Works because C.doSomething expects a B (covariant)
  cInstance.doSomething(bInstance);

  A aInstance = A();
  aInstance.doSomething(aInstance); // normal A usage
}

// ---- Example: external keyword ----
// Used to declare a method or property implemented elsewhere
abstract class ExternalExample {
  external void fetchData();
}

// ---- Example: covariant keyword ----
class A {
  void doSomething(A a) {
    print('A.doSomething with A');
  }
}

class B extends A {}

class C extends A {
  @override
  void doSomething(covariant B abc) {
    // covariant allows overriding with more specific type
    print('C.doSomething with B');
    super.doSomething(abc);
  }
}
