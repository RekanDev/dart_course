void main() {
  // ---- Using enum with switch ----
  DayOfWeek day = DayOfWeek.sat;

  switch (day) {
    case DayOfWeek.sat:
      print(DayOfWeek.sat.fullName);
      break;
    case DayOfWeek.sun:
      print(DayOfWeek.sun.fullName);
      break;
    case DayOfWeek.mon:
      print(DayOfWeek.mon.fullName);
      break;
    case DayOfWeek.tue:
      print(DayOfWeek.tue.fullName);
      break;
    case DayOfWeek.wed:
      print(DayOfWeek.wed.fullName);
      break;
    case DayOfWeek.thu:
      print(DayOfWeek.thu.fullName);
      break;
    case DayOfWeek.fri:
      print(DayOfWeek.fri.fullName);
      break;
  }

  // ---- Loop over all enum values ----
  for (var element in DayOfWeek.values) {
    print(
      'Index: ${element.indexDay}, Name: ${element.fullName}, isFriday: ${element.isFriday}',
    );
  }
}

enum DayOfWeek {
  sat('Saturday', 0),
  sun('Sunday', 1),
  mon('Monday', 2),
  tue('Tuesday', 3),
  wed('Wednesday', 4),
  thu('Thursday', 5),
  fri('Friday', 6);

  const DayOfWeek(this.fullName, this.indexDay);

  final String fullName;
  final int indexDay;

  bool get isFriday => this == fri;
}
