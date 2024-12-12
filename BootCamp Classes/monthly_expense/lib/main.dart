// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:monthly_expense/pages/home_page.dart';
import 'package:provider/provider.dart';

import 'database/expense_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //initialize db:
  await ExpenseDatabase.initialize();
  runApp(ChangeNotifierProvider(create: (context) => ExpenseDatabase(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
