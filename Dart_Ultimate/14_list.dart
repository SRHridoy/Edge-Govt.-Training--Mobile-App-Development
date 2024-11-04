void main() {
  List list = [10, 20, 30, 'Hello', false];
  print(list);
  print(list[0]);
  print(list[3]);
  List<int> listInt = [32, 3, 4];
  print(listInt);

  //Generics:
  //final student = Student('Hridoy');

  List students = [
    Student("Hridoy"),
    Student("Noumi"),
    Student("Riti"),
    Student("Rana"),
    'Strings',
    4,
    false
  ];

  print(students[0].name);

  final student = students[5];
  if (student is Student) {
    print(student.name);
  } else {
    print(student);
  }
}

class Student {
  final String name;
  Student(this.name);
}

// class Student<T> {
//   final T name;

//   Student(this.name);

//   void setName(T name) {
//     print('New name: $name');
//   }
// }
