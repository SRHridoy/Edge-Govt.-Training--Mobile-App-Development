void main(){
  print(Constants.PI);
  print(Constants.date);
  print(Constants.giveMeSomeValue());
}

class Constants{
  static final PI = 3.1416;
  static final date = DateTime.now();

  static double giveMeSomeValue(){
    return PI;
  }

}