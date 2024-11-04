void main() {
  Car car = Car();
  car.accelerate();
}

class OtherClass {
  bool isLightOn = true;
  bool isEngineWorking = false;
}

class Vehicle {
  int noOfWheels = 10;
  void accelerate() {
    print('Accelerating');
  }
}

class Car extends OtherClass implements Vehicle {
  @override
  int noOfWheels = 4;
  @override
  void accelerate() {
    print(isEngineWorking);
    print(isLightOn);
    print(noOfWheels);
  }
}

class Truck extends OtherClass implements Vehicle {
  @override
  bool isEngineWorking = true;
  @override
  bool isLightOn = true;
  @override
  int noOfWheels = 6;

  @override
  void accelerate() {
    print('Accelerating the Truck');
  }
}
