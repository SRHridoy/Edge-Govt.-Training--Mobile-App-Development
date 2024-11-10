// ignore_for_file: prefer_const_constructors

import 'package:basics_ultimate/main.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key});

  //text editing controller to get access to what the user typed:
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  //show alert :
  void showAlert(BuildContext context){
    Widget alertDialog =  AlertDialog(
      title: Text('Your Input is : '),
      content: Text('Your email is : ${emailController.text} \n password is : ${passController.text}'),
    );

    showDialog(context: context, builder: (BuildContext context) {
      return alertDialog;
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Text Field Widget(User Input)',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.amberAccent, width: 2))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.amberAccent, width: 2))),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed:() {
                showAlert(context);
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.white,
                elevation: 4,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              ),
            ),

          ],
        )),
      ),
    );
  }
}
