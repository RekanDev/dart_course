void main() {
  Car car1 = Car();
  car1.color = 'blue';
  car1.drive();

  Car car2 = Car();
  car2.color = 'red';
  car2.drive();

  House house1 = House();
  house1.color = 'white';
  house1.rooms = 3;

  House house2 = House();
  house2.color = 'gray';
  house2.rooms = 5;
}

class Car {
  String? color;

  void drive() {
    print('The $color car is driving');
  }
}

class House {
  String? color;
  int? rooms;
}
