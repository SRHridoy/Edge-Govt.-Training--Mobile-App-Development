void main(){
  var citySets = <String>{'Rajshahi','Dinajpur','Dhaka','Rajshahi'};
  citySets.add('Khulna');
  citySets.addAll(['Barishal','Bogura','Rangpur']);
  print(citySets);
  print(citySets.elementAt(0));

  print(citySets.length);
  print(citySets.first);
  print(citySets.last);
  print(citySets.isNotEmpty);
  citySets.clear();
  print(citySets.isEmpty);
  print(citySets);
  citySets.add('Rajshahi');
  print(citySets);
  print(citySets.single);
  print(citySets.hashCode);
}