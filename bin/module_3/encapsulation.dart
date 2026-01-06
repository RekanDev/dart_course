void main() {
  // ---- Private Variables and Methods ----
  Student student1 = Student('Azad', 19);

  student1.age = 1; // setter with validation
  print('name = ${student1.name}');
  print('age = ${student1.age}');

  // ---- Pass by Value vs Pass by Reference ----
  int a = 5;
  print(a);
  changeInt(a);
  print(a);

  List<int> list = [1, 2, 3];
  print(list);
  changeList(list);
  print(list);
}

class Student {
  final String _name; // private
  int _age; // private

  Student(this._name, this._age);

  // Getter
  String get name => _name;

  int get age => _age;

  // Setter
  set age(int value) {
    if (value > 0) {
      _age = value;
    }
  }
}

void changeInt(int x) {
  x = 100;
}

void changeList(List<int> newList) {
  newList[0] = 5;
}
