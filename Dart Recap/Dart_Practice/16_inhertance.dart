class Father{
  var name = "Muhammad";
  totalTaka(){
    print("100k Taka");
  }
}

class Son extends Father{
  @override
  totalTaka(){
    print("50k Taka");
  }
}

void main(){
  var son1 = new Son();
  print(son1.name);
  son1.totalTaka();

  var father = new Father();
  print(father.name);
  father.totalTaka();

 Father son2 = new Son();
  print(son2.name);
  son2.totalTaka();


}