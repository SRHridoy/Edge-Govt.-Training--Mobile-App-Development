class Arithmatic {
  int add(int a, int b) {
    return a + b;
  }

  int sub(int a, int b) {
    return a - b;
  }

  int mul(int a, int b) {
    return a * b;
  }

  double div(double a, double b) {
    return a / b;
  }
}

void main() {
  Arithmatic arithmatic = new Arithmatic();
  print(arithmatic.add(44, 44));
  print(arithmatic.sub(5, 3));
  print(arithmatic.mul(33, 2));
  print(arithmatic.div(44, 4));
}
