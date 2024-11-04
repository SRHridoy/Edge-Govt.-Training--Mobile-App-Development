/// The function defines variables of different data types, creates a list and a map, and prints
/// specific values from them.
void main(){
  var num = 32;
  var str = "Bangladesh";
  var dNum = 3.1416;
  var tF = false;
  var list = [1,3,"dhaka",false,3.23];//array
  print(list);
  print("$num $str $dNum $tF");
  list[0] = 33;
  print(list);
  print(list[2]);

  var person = {
    'name':'Hridoy',
    'age':23,
    'city':'Bangladesh',
    'isMarried':true
  };

  print(person);

  print(person['name']);
  print(person['isMarried']);
}