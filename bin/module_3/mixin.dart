void main() {
  D().printSomething();
}

class D extends A with B, C {
  void printSomething() {
    doSomething();
  }
}

class A {
  void doSomething() {
    print('A');
  }
}

// B mixin requires a class that extends A (on A)
mixin B on A {
  @override
  void doSomething() {
    super.doSomething();
    print('B');
  }
}

// C mixin requires a class that extends A (on A)
mixin C on A {
  @override
  void doSomething() {
    super.doSomething();
    print('C');
  }
}
