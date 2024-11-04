void main() {
  var myC = myClass();
  myC.printName('Flutter');
  myC.printName('Dart');

  var sum = myC.add(a: 5, b: 32);
  print(sum);
}

class myClass {
  void printName(String name) {
    print(name);
  }

  int add({required int a, required int b}) {
    return a + b;
  }
}
