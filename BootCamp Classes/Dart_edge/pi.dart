class PI {
  var pi = 3.1416;
}

class Circle extends PI {
  void area(var radius) {
    print('The area of a circle is : ${pi * radius * radius}');
  }

  void perimeter(var radius) {
    print('The perimeter is : ${2 * pi * radius}');
  }
}

void main() {
  Circle circle = new Circle();
  circle.area(2);
  circle.perimeter(2);
}
