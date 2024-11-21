
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabse {
  List toDoList = [];

  //reference the box:
  final _myBox = Hive.box('myBox');

  //Default 1st time openning this app:
  void createInitialData() {
    toDoList = [
      ['Keep your task here!', false],
      ['Enjoy!', false],
    ];
  }

  //load the data from database:
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
