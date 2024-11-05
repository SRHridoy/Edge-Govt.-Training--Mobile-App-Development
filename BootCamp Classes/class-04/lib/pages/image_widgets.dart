// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All About Images',style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.pink,),

      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 50),
        width: 200,
        height: 200,
        child: GestureDetector(
          onTap: (){
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text('Friends are Everything!')),
            // );
            showAlertDialog(context);
          },
          child: Image.asset('assets/images/fisherman_on_boat.jpg',opacity: AlwaysStoppedAnimation(.5)),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("Close"),
      onPressed: () {
       Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("This is an Alert Button of Image"),
      content: Text("Fishermen are very hardworking!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
