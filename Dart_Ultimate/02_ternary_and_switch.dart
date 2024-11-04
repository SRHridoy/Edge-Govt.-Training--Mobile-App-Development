void main(){
  var str = "string";
  String value = str.startsWith("str")?'WOW':'naha';
  print(value);
  //We use break if any empty case is there.
  int age = 23;
  switch(value){
    case 'WOW' when age>=10:
      print("Hello");
    case 'naha':
      print("Gello");
    case 'YO':
      print("Pello");
  }
}