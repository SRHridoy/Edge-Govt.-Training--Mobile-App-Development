class Math {
  int Operation(int num1, int num2) {
    return 0;
  }
}

class Add extends Math {
  @override
  int Operation(int num1, int num2) {
    return num1 + num2;
  }
}

class Sub extends Math {
  @override
  int Operation(int num1, int num2) {
    return num1 - num2;
  }
}

class Mul extends Math {
  @override
  int Operation(int num1, int num2) {
    return num1 * num2;
  }
}

void main() {
  Math math = new Add();
  print(math.Operation(2, 3));

  Math math1 = new Sub();
  print(math1.Operation(5, 2));
}


