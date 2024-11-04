import 'dart:io';

void main() {
  print('Development is my passion!');
  stdout.write('Flutter is awesome!\n');

  print('Who are you?');
  var name = stdin.readLineSync();
  print('I am $name');
}
