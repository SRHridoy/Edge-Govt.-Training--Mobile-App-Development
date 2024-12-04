import 'dart:io';

class Person {
  String? _name;
  int? _age;
  String? _gender;
  Person(this._name, this._age, this._gender);

  void getDetails() {
    print('${_name} \n ${_age} \n ${_gender}');
  }
}

void main() {
  stdout.write('Enter the name of the person : ');
  String? name = stdin.readLineSync()!;

  stdout.write('Enter the age : ');
  int? age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the gender : ');
  String? gender = stdin.readLineSync()!;

  Person person = new Person(name, age, gender);

  person.getDetails();
}
