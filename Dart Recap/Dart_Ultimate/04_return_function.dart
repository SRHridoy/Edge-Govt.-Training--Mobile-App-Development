void main(){
  print(returnFunction());
  print((){
    print('Yoo');
  });

  final getFunction = returnFunction();
  getFunction();

 (){
    print('Yoo');
  }();

}

Function returnFunction(){
  return(){
    print("I am returning a \' function\'");
  };
}