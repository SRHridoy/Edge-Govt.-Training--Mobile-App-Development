// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellowAccent,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //user input:
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
                hintStyle: TextStyle(color: Colors.black26),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 3),
                ),
              ),
              cursorColor: Colors.lightGreenAccent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //save Button:
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                  colors: Colors.greenAccent,
                ),
                //cancel button :
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                  colors: Colors.redAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
