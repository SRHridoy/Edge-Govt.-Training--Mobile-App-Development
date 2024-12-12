//useful functions
import 'package:intl/intl.dart';
//string to double:
double convertStringToDouble(String string){
  double? amount = double.tryParse(string);
  return amount ?? 0;
}

//format double amount into taka:
String formatAmount(double amount){
  final format = NumberFormat.currency(locale: 'bn_BD',symbol: '৳',decimalDigits: 2);
  return format.format(amount);
}