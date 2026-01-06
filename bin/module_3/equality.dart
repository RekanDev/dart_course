import 'package:equatable/equatable.dart';

void main() {
  // ---- Create student ----
  final student1 = Student(name: 'Azad', age: 20);
  print(student1);

  // ---- Equality (==) ----
  final student2 = Student(name: 'Azad', age: 20);
  print('student1 == student2: ${student1 == student2}'); // true

  // ---- hashCode in sets ----
  final set1 = <Student>{
    Student(name: 'Azad', age: 20),
    Student(name: 'Azad', age: 20),
  };
  print('Set length: ${set1.length}'); // 1

  // ---- copyWith example ----
  final student2New = student2.copyWith(age: 50);
  print(student2New);

  // ---- Operator overloading example ----
  print(student2 + student2New); // 70 (age sum)
}

// Base class
class MyClass {
  const MyClass();
}

// Equatable Student class
class Student extends MyClass with EquatableMixin {
  final String name;
  final int age;

  const Student({
    required this.name,
    required this.age,
  });

  // Equatable props for equality
  @override
  List<Object?> get props => [name, age];

  @override
  bool? get stringify => true;

  // copyWith method
  Student copyWith({String? name, int? age}) {
    return Student(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  // Operator + overloading (sum of ages)
  int operator +(Student other) => age + other.age;
}
