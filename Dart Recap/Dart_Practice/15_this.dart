class ThisClass{
  var num1 = 10;
  var num2 = 32;

  addTwoNumbers(){
    var sum = this.num1+this.num2;
    print(sum);
  }

  callAddTwoNum(){
    this.addTwoNumbers();
  }
}