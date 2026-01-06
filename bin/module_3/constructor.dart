void main() {
  // ---- Generative & Default Constructor ---
  House house1 = House(color: 'white', rooms: 3);
  print(house1);

  // ---- Named Constructor ---
  House house2 = House.small();
  print(house2);

  // ---- Const Constructor ---
  const House house3 = House.constHouse(color: 'blue', rooms: 2);
  print(house3);

  // ---- Redirecting Constructor ---
  House house4 = House.oneRoom();
  print(house4);

  // ---- Factory Constructor ---
  House house5 = House.fromJson({'color': 'gray', 'rooms': 5});
  print(house5);

  // ---- Tear-offs Constructor ---
  var houseTearOff = House.new;
  House house6 = houseTearOff(color: 'green', rooms: 4);
  print(house6);
}

class House {
  final String color;
  final int rooms;

  // ---- Generative / Default Constructor ---
  House({required this.color, required this.rooms});

  // ---- Named Constructor ---
  House.small() : color = 'white', rooms = 1;

  // ---- Const Constructor ---
  const House.constHouse({required this.color, required this.rooms});

  // ---- Redirecting Constructor ---
  House.oneRoom() : this(color: 'yellow', rooms: 1);

  // ---- Factory Constructor ---
  factory House.fromJson(Map<String, dynamic> json) {
    return House(
      color: json['color'] as String,
      rooms: json['rooms'] as int,
    );
  }

  @override
  String toString() => 'House(color: $color, rooms: $rooms)';
}
