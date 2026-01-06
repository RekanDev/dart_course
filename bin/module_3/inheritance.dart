void main() {
  List<SmartDevice> devices = [
    Light('light 1'),
    Light('light 2'),
    Light('light 3'),
    TV('tv 1'),
    TV('tv 2'),
  ];

  for (var device in devices) {
    device.turnOn();

    if (device is Light) {
      device.changeColor();
    }
  }
}

class SmartDevice {
  final String name;

  const SmartDevice(this.name);

  void turnOn() {
    print('$name smart device turned on');
  }
}

class Light extends SmartDevice {
  const Light(super.name);

  @override
  void turnOn() {
    print('$name light turned on');
  }

  void changeColor() {
    print('$name changed color');
  }
}

class TV extends SmartDevice {
  const TV(super.name);

  @override
  void turnOn() {
    print('$name TV turned on');
  }
}
