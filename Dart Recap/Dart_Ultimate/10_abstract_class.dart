void main() {
  final car = Car();
  car.accelerate();
}


//All classes are implicitly abstract, but abstract class can't be instantiated....
abstract class Vehicle {
  void accelerate();
}

class Bike extends Vehicle {
  @override
  void accelerate() {
    print(
        'Abstract class ke extends ba implements jai kori na keno override korai lagbe abstruct method ke');
  }
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print('Accelerating');
  }
}

class Truck implements Vehicle {
  @override
  void accelerate() {
    // TODO: implement accelerate
  }
}
