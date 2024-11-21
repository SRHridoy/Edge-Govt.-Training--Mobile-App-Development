main() {
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
  print(age.runtimeType);

  String strAge = '21';
  print(strAge);

  age = int.parse(strAge);
  print(age.runtimeType);

  //Boolean
  
  //List

  //Map

  //Set

  //Runes

  //Enum
}
