import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/expense.dart';

class ExpenseDatabase extends ChangeNotifier{
  static late Isar isar;
  List<Expense> _allExpenses =[];

//   Setup:
static Future<void> initialize() async{
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open([ExpenseSchema], directory: dir.path);
}

//Getters:
List<Expense> get allExpense =>_allExpenses;
//Operations:
//Create :
Future<void>createNewExpense(Expense newExpense) async{
  //add to db
  await isar.writeTxn(() => isar.expenses.put(newExpense));

  //re-read from db;
  await readExpense();
}
//Read:
Future<void> readExpense() async{
  //fetch all existing expenses from db:
  List<Expense> fetchedExpense = await isar.expenses.where().findAll();
  //give to local expense list:
  _allExpenses.clear();
  _allExpenses.addAll(fetchedExpense);
  //update UI:
  notifyListeners();

}

//Update:
Future<void> updateExpense(int id, Expense updatedExpense) async{
  //make sure new expense has same id as existing one:
  updatedExpense.id = id;
  //update in db:
  await isar.writeTxn(() => isar.expenses.put(updatedExpense));
  //re-read from db:
  await readExpense();
}

//Delete:
Future<void> deleteExpense(int id) async{
  //delete from db
  await isar.writeTxn(() => isar.expenses.delete(id));
  //re-read from db
  await readExpense();
}
//Helper:
}