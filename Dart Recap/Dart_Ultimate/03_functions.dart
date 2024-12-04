void main(){
  var details = printDetails();
  print(details);
  print(details.$2);
  var (age, name) = printDetails();
  print(age);
  print(name);

  print(printNull());

  namedArgument(false,name: name, age: 22, country: "Bangladesh");
  print(printStuff());
  print(printStuff().name);
  print(printStuff().age);
}

(int,String) printDetails(){
  return(23,"Ozaer");
}

String? printNull(){
  return null;
}

//Named agrument:
void namedArgument(bool isChild,{required String name,int? age, required String country}){
print(name);
print(age);
}

({int age, String name}) printStuff(){
  return (age: 30,name: 'Rupa');
}
