// Define a class Rectangle
import 'dart:io';

class Rectangle {
  double _length = 0; // Private field
  double _width = 0; // Private field

  // Setter for length
  void set length(double value) {
    if (value > 0) {
      _length = value;
    } else {
      print("Length must be positive.");
    }
  }

  // Getter for length
  double get length => _length;

  // Setter for width
  void set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Width must be positive.");
    }
  }

  // Getter for width
  double get width => _width;

  // Method to calculate area
  double get area => _length * _width;

  // Method to calculate perimeter
  double get perimeter => 2 * (_length + _width);
}

void main() {
  // Create an object of Rectangle
  Rectangle rect = Rectangle();

  // Set length and width using setters
  rect.length = double.parse(stdin.readLineSync()!);
  rect.width= double.parse(stdin.readLineSync()!);


  // Access length and width using getters
  print("Length: ${rect.length}");
  print("Width: ${rect.width}");

  // Calculate and display area and perimeter
  print("Area: ${rect.area}");
  print("Perimeter: ${rect.perimeter}");

  // Try setting invalid values
  rect.length = -4; // Invalid, will trigger validation
  rect.width = 0; // Invalid, will trigger validation
}
