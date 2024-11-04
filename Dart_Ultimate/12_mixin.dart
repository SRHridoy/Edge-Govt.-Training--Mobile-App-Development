void main() {
  final anim = Animal();
  anim.fn();
}

mixin Jump {
  int jumping = 10;
}

mixin Scream {
  bool isScreaming = false;
}

class Animal with Jump, Scream {
  void fn() {
    print(jumping);
    print(isScreaming);
  }
}

class Cat extends Animal {
  void func() {
    print(jumping);
  }
}
