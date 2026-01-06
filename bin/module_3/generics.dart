void main() {
  // Generic with String
  final box1 = Box('Azad');
  print(box1.value);

  // Generic with int
  final box2 = Box(42);
  print(box2.value);

  // Generic with double
  final box3 = Box(3.14);
  print(box3.value);

  // Generic with a custom class
  final studentBox = Box(Student('Ali', 20));
  print(studentBox.value.name);
  print(studentBox.value.age);
}

class Box<T> {
  final T _value;

  const Box(this._value);

  T get value {
    if (_value is int) {
      print('_value is int');
    } else if (_value is String) {
      print('_value is String');
    } else if (_value is double) {
      print('_value is double');
    } else {
      print('_value is ${_value.runtimeType}');
    }
    return _value;
  }
}

class Student {
  final String name;
  final int age;

  Student(this.name, this.age);
}

// ---- Generics conventions ----
// E = Element
// T = Type
// R = Return
// S = Source
// K = Key
// V = Value
