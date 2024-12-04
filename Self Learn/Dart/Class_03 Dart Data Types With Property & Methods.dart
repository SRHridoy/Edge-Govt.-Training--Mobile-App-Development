void main() {
  //String
  String myName = 'Md. Sohanur Rahman Hridoy!';
  String herName = "Mst. Nafiza Khanom Nova";
  String unKnown = ''' Who
  are you
  ? ''';

  print(myName.toUpperCase());
  print(unKnown);
  print(herName.toLowerCase());

  String str = '              Progra#####mming is P##ower      ###    ';

  print(str.replaceAll('#', ''));

  print(str);
  //Remove unnecessary whitespaces...
  print(str.trim());
  print(str.trimLeft());
  print(str.trimRight());

  String s = 'Flutter is Future!';
  print(s.split(' '));

  print(myName.contains('Hridoy'));
  print(myName.length);
  print(myName.indexOf('Hridoy'));

  //Integer/Number
  int age = 10;
  print(age.isOdd);
  print(age.isEven);
  print(age.isFinite);

  print(age);
  //check data type :
  print(age.runtimeType);

  String strAge = '21';
  print(strAge);
  //int to string :
  age = int.parse(strAge);
  print(age.runtimeType);

  //Boolean
  bool isTrue = true;
  print(isTrue);
  bool isFact = 2 > 5;
  print(isFact);

  //Double :
  double balance = 500.55040;
  print(balance);
  print(balance.toInt());
  print(balance.toString());
  print(balance.toStringAsFixed(3));

  //List
  List ageList = [10, 11, 31, 33, 22];
  print(ageList.length);
  print(ageList.isEmpty);
  print(ageList.isNotEmpty);
  print(ageList.runtimeType);
  print(ageList);
  print(ageList.first);
  print(ageList[1]);
  print(ageList.indexOf(22));
  //if missing show -1
  print(ageList.indexOf(111));

  List list = [12, true, false, 5.22, 'hi', 'eeps'];
  print(list.indexOf('hi'));

  //Suffling :
  print(list);
  list.shuffle();
  print(list);
  //Reverse :
  print(ageList.reversed);

  list.add(44);
  print(list);

  List updatedList = [33, 2, 1, 55, 6, 7, 32];
  list.addAll(updatedList);
  list.insert(4, 553);
  list.insertAll(3, updatedList);
  print(list);

  List numList = [1, 2, 4, 4, 3, 5];
  numList.remove(4);
  print(numList);
  numList.removeAt(0);
  print(numList);
  numList.removeLast();
  print(numList);
  numList.removeRange(0, numList.length);
  print(numList);

  //specific type list :
  List<int> roll = [1, 3, 4, 5, 6];
  print(roll);

  //Map
  Map userDetails = {
    'username': 'Hridoy',
    'email': 'sohanurrahman@gmail.com',
    'password': 'password',
  };
  userDetails['uid'] = '12k00';
  print(userDetails);
  print(userDetails['username'] + " " + userDetails['email']);
  print(userDetails.keys);
  print(userDetails.values);

  //list of map:
  List<Map> students = [
    {'name': 'abc', 'roll': 12, 'address': 'jungle'},
    {'name': 'xyz', 'roll': 4, 'address': 'forest'},
  ];

  print(students);
  print(students[0]);
  print(students[0]['name']);
  //Set

  //Runes

  //Enum
}
