import 'dart:io';

void main() {
  stdout.write('Enter a String : ');
  String? str = stdin.readLineSync()!;

  String? check = str.split('').reversed.join('');
  print(check);

  if (str == check) {
    print('The string is Palaindrome');
  } else {
    print('This is not palindrome');
  }
}
