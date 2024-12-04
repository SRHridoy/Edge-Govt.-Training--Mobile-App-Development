// Define a class Person
import 'dart:io';

class Person {
  String name;
  int age;

  // Constructor to initialize the fields
  Person(this.name, this.age);

  // Method to display person details
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  // Create objects using the constructor
  // Person person1 = Person("Alice", 25);
  // Person person2 = Person("Bob", 30);

  Person p1 = Person(stdin.readLineSync()!, int.parse(stdin.readLineSync()!));
  Person p2 = Person(stdin.readLineSync()!, int.parse(stdin.readLineSync()!));

  // Display details of person1
  print("Details of Person 1:");
  p1.displayInfo();

  // Display details of person2
  print("\nDetails of Person 2:");
  p2.displayInfo();
}
