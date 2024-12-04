import 'dart:io';

void main() {
  print('Enter Marks : ');
  double n1 = double.parse(stdin.readLineSync()!);
  n1 = double.parse((n1).toStringAsFixed(2));
  // int n2 = int.parse((n1).toString());
  // if (n1 - n2 > 0.5) {
  //   n1 = n1.ceilToDouble();
  // }
  if (n1 >= 80 && n1 < 101 && n1 >= 0) {
    print('You got 4.0');
  } else if (n1 >= 70 && n1 < 80 && n1 < 101 && n1 >= 0) {
    print('You got 3.5');
  } else if (n1 >= 60 && n1 < 70 && n1 < 101 && n1 >= 0) {
    print('You got 3.0');
  } else if (n1 < 40 && n1 < 101 && n1 >= 0) {
    print('You got 0.o');
  } else {
    print('Wrong input');
  }
}
