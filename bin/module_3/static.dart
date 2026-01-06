void main() {
  // ---- Non-static properties ----
  final student1 = Student('Azad');
  student1.name = 'Ali';
  print(student1.name); // Ali

  final student2 = Student('Kamaran');
  student2.name = 'Omar';
  print(student2.name); // Omar

  // ---- Static properties ----
  Student.age = 30;
  print(Student.age); // 30

  Student.age = 40;
  print(Student.age); // 40

  // ---- Static method usage ----
  Student.testStatic();

  // ---- Non-static method usage ----
  student1.nonStaticTest();
}

class Student {
  // Constructor
  Student(this.name);

  // Non-static (instance) property
  String? name;

  // Static (class-level) property
  static int? age;

  // Static method
  static void testStatic() {
    print('This is a static method');
  }

  // Non-static method
  void nonStaticTest() {
    // Can access static members
    print('Inside non-static method: age = $age');
    testStatic();
  }
}
