void main() {
  final rivaStudent = Student('Riva', 30);
  List<Student> students = [
    Student("Hridoy", 10),
    Student("Tanha", 20),
    Student("Tashin", 30),
    Student("Nova", 40)
  ];

  print(students);
  students[3] = Student('Rupa', 50);
  print(students);

  students.add(Student('Nova', 60));
  print(students);

  students.insert(0, rivaStudent);
  print(students);

  students.remove(rivaStudent);
  print(students);

  //1. A new list of students empty
  //2. run a for loop
  //3. check if the grade of 1 student is greater than 20
  //4. if true , add student to my new list
  //5. print list out of for loop

  List<Student> filteredStudents = [];
  for (int i = 0; i < students.length; i++) {
    if (students[i].marks >= 20) {
      filteredStudents.add(students[i]);
    }
  }

  print(filteredStudents);

  //For in loop:
  // for (final student in students) {
  //   print(student);
  // }

  //Best Aproach:
  students = students.where((student) => student.marks >= 20).toList();
  print(students);

  print(students.reversed.toList());
  
}

class Student {
  final String name;
  final int marks;
  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name';
}
