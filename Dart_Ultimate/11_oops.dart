void main() {
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();

  Cat catC = Cat();
  catC.sound();
  Dog dogD = Dog();
  dogD.sound();
}

class Animal {
  void sound() {
    print('Animal making soung');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog is barking');
  }
}
