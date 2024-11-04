void main() {
  Animal animal = Cat();
  Animal1 anim = Animal1();

  switch(anim){

  }

  switch (animal) {
    case Dog():
      print('dog');

    case Human():
      print('human');
    case Cat():
      print('cat');
    case Human1():
      // TODO: Handle this case.
  }
}

sealed class Animal {}

final class Animal1 {}

base class Animal2{}//Can't implemented but extended
interface class Animal3{}//Only Can be implemented...can be instantiated for true proper interface we use abstract with interface..
abstract interface class Animal4{}
mixin class Animal5{}

base class Human2 extends Animal2{}
final class Human1 extends Animal{}


class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}

class Cat1 implements Cat {}
