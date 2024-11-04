void main(){
  const city = ['Dhaka','Rangpur','Rajshahi'];
  print(city);
  // city.add('Dinajpur');
  // city.add('Khulna');
  print(city);
  
  var numbers = [1,2,3,4,5,6];
  numbers.add(7);
  print(numbers);
  numbers.addAll([8,9,10]);
  print(numbers);

  numbers.insert(1, 100);
  print(numbers);
  numbers.insertAll(2, [200,300,400]);
  print(numbers);

  numbers[5] = 500;
  print(numbers);

  numbers.removeLast();
  print(numbers);
  numbers.removeAt(0);
  print(numbers);
  numbers.remove(5);
  print(numbers);
}