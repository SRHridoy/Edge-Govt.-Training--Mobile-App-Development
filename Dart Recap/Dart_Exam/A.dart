import 'dart:io';


int factorial(var num) {
    for (int i = num - 1; i >= 1; i--) {
      num *= i;
    }
    return num;
}

void main() {
  stdout.write('Enter an Interger number : ');
  int? num = int.parse(stdin.readLineSync()!);

  stdout.write('The factorial is : ${factorial(num)}');
}
