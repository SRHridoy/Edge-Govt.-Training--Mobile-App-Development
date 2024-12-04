import 'dart:io';

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

void main() {
  print('Enter a Number : ');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Enter Second Number : ');
  int n2 = int.parse(stdin.readLineSync()!);
  print('Summation is : ${add(n1, n2)}');
  print('Substraction is : ${sub(n1, n2)}');
  print('Multiplication is : ${mul(n1, n2)}');
  print(
      'Division is ; ${div(double.parse(n1.toString()), double.parse(n2.toString()))}');
}
