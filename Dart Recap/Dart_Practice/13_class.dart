import '14_MathClass.dart';
import '15_this.dart';

void main(){
  var obj = new Math("I am calling you Math Class");
  print(Math.name);
  print(obj.type);
  print(Math.addTwoNumbers(10, 30));
  print(obj.addThreeNumbers(4, 2, 3));

  ThisClass thisClass = new ThisClass();
  thisClass.callAddTwoNum();
}