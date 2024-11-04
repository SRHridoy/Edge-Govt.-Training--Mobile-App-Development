void main(){
  var person={
    'name':'Hridoy',
    'age':23,
    'city':'Rajshai'
  };
  print(person);
  person['country'] = 'Bangladesh';
  print(person);

  //Map using constructor:
  var student = new Map();
  student['name'] = 'Hridoy';
  student['done'] = 'Yes';
  student['age'] = 23;
  print(student);

  //Properties :
  print(student.keys);
  print(student.values);
  print(student.length);
  print(student.isEmpty);

  //Methods :
  student.addAll({'country':'Bangladesh','Blood':'A+'});
  print(student);
  student.remove('age');
  print(student);

}