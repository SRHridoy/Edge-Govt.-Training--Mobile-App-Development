import 'dart:io';

void calculator(var input1, var operator, var input2) {
  switch (operator) {
    case '+':
      stdout.write('The Summation is : ${input1+input2}');
      break;
    case '-':
      stdout.write('The Substraction is : ${input1 - input2}');
      break;
    case '*':
      stdout.write('The Multiplication is : ${input1 * input2}');
      break;
    case '/':
      try {
        stdout.write('The Division is : ${input1 ~/input2}');
      } catch (e) {
        print(e);
      }
      break;
    default:
  }
}

void main() {
  stdout.write('Enter a number : ');
  int? input1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter an Operator : ');
  var operator = stdin.readLineSync()!;
  stdout.write('Enter another number : ');
  int? input2 = int.parse(stdin.readLineSync()!);

  calculator(input1, operator, input2);
}
