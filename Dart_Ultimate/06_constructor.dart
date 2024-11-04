void main(){
  final cookie = Cookie(shape: 'Circular', size: 20);
  print(cookie.shape);
  print(cookie.size);

  print(cookie._weight);
  cookie._weight =9;
  print(cookie._weight);

  print(cookie.height);
  cookie.setHeight = 15;
  print(cookie.height);
}

class Cookie{
  Cookie({required this.shape, required this.size}){
    baking();
  }
  //Properties :
  final String shape;
  final double size;
  //Method:
  void baking(){
    print("Your cookie which is of the shape $shape and size $size cm has started baking!");
  }

  bool isCooling(){
    return false;
  }

  //Private variable :
  int _height = 4;
  int _weight = 5;

  int calculateSize(){
    return _height*_weight;
  }
  //Getters :
  int get height=>_height;
  //Setters :
  set setHeight(int h){
    _height = h;
  }

}
