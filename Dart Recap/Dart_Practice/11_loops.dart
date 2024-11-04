void main(){
  for(var i = 1; i <= 10; i++){
    print("8 x $i = "+(8*i).toString());
  }

  //For in loop on list:
  var cities = ['Rajshahi','Dinajpur','Dhaka'];
  for(var city in cities){
    print(city);
  }
  //For in loop on set:
  var friends = {
    'Ozaer','Arnob','Abid','Mahi','Mehedi','Apurbo','Arko'
  };
  for(var friend in friends){
    print(friend);
  }

  //For in loop on JsonArray:
  var products = [
    {'name':'soap','price':100},
    {'name':'sugar','price':190},
    {'name':'milk','price':270},
    {'name':'rice','price':70},
    {'name':'fish','price':400}
  ];

  for(var product in products){

    print(product);
    print(product['name']);
    print(product['price']);
    print("Product name is ${product['name']} and which price is ${product['price']} taka.");
  }

}