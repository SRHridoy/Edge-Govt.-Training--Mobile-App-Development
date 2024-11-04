void main(){
  int numI = 34;
  double numD = 3.23;
  print(numI.isOdd);
  String s = "Data";
  bool isTrue = true;
  //Not recommended: we don't get dedicated properties and methods.
  dynamic anyValue;
  anyValue = 343;
  print(anyValue.runtimeType);
  anyValue = "dhf";
  print(anyValue.runtimeType);

  //String interpolation :
  String msg = "Curse";
  String truth = "Quota is a ${msg}";
  print(truth);
  print("$truth ${isTrue}");

  String greeting = "Hello";
  print(greeting);
  greeting = "\$19";
  print(greeting);
  greeting = ''' Hello 
  
  this is multiline String''';

  greeting = "this is \n this is ..";
  print(greeting);

  //recommended:
  var someValue = 10;//Correctly identify the value...Dart type system is awesome..
  print(someValue);

  const compileTimeConst = 3.1416;
  //const dateFalse = DateTime.now();// Compile time constant...
  final date = DateTime.now();//Runtime constant...
  print(date);

  //Optional variable :
  //String/int/bool and null
  //int some = null;
  int? some = null;//Preferable...
  print(some?.isOdd);
  final someV = null;//Dynamic not recommended...
  //Null Safety:
  String? str = "fdkfd";
  print(str);
  str = null;
  print(str?.length);
  str = "fkdjdk";
  print(str?.length);
  str = null;
  print(str?.length??"This is error");



}