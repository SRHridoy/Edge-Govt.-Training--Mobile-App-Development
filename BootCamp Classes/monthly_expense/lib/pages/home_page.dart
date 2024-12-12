// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:monthly_expense/database/expense_database.dart';
import 'package:monthly_expense/helper/helper_functions.dart';
import 'package:monthly_expense/models/expense.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller:
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    Provider.of<ExpenseDatabase>(context,listen: false).readExpense();
        super.initState();
  }
  //open new expense box:
  void openNewExpense(){
    showDialog(context: context, builder: (context) => AlertDialog(title: Text('নতুন খরচ'),content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //user input for exense name:
        TextField(
          controller: nameController,
          decoration: InputDecoration(hintText: "খরচের নাম"),
        ),
        //use input for expense amount:
        TextField(
          controller: amountController,
          decoration: InputDecoration(hintText: "খরচের পরিমান"),
        ),
      ],
    ),
    actions: [
      //cancel button:
      _cancelButton(),
      //save button:
      _saveButton(),
    ],
    ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseDatabase>(
      builder: (context, value, child) =>Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
      openNewExpense();
    },child: Icon(Icons.add)),
    body: ListView.builder(itemCount: value.allExpense.length,
      itemBuilder: (context,index){
      Expense individualExpense = value.allExpense[index];
      return ListTile(
        title: Text(individualExpense.name),
        trailing: Text(formatAmount(individualExpense.amount)),
      );
      },
    ),
    ),
    );
  }

  //cancel button:
  Widget _cancelButton(){
    return MaterialButton(onPressed:() {
      Navigator.pop(context);
      nameController.clear();
      amountController.clear();
    },child: Text('বাতিল'),);
  }

//save button:
Widget _saveButton(){
    return MaterialButton(onPressed: () async {
      if(nameController.text.isNotEmpty && amountController.text.isNotEmpty){
        Navigator.pop(context);
        Expense newExpense = Expense(name: nameController.text, amount: convertStringToDouble(amountController.text), date: DateTime.now());

        await context.read<ExpenseDatabase>().createNewExpense(newExpense);
        nameController.clear();
        amountController.clear();
      }
    },child: Text('সেইভ'),);
}
}



