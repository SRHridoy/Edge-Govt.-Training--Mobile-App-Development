// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewSeparatedWidgets extends StatelessWidget {
   ListviewSeparatedWidgets({super.key});
var arrNames = ['Rafiqul Islam','Sultana Razia','Rehena Akter','Sohanur Rahman','Nafiza Khanom','Tasniya Rahman','Tanjim Ahmed','Tobibur Rahman','Rafiqul Islam','Sultana Razia','Rehena Akter','Sohanur Rahman','Nafiza Khanom','Tasniya Rahman','Tanjim Ahmed','Tobibur Rahman','Rafiqul Islam','Sultana Razia','Rehena Akter','Sohanur Rahman','Nafiza Khanom','Tasniya Rahman','Tanjim Ahmed','Tobibur Rahman','Rafiqul Islam','Sultana Razia','Rehena Akter','Sohanur Rahman','Nafiza Khanom','Tasniya Rahman','Tanjim Ahmed','Tobibur Rahman','Rafiqul Islam','Sultana Razia','Rehena Akter','Sohanur Rahman','Nafiza Khanom','Tasniya Rahman','Tanjim Ahmed','Tobibur Rahman',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,title: Text('ListView Separated Widgets',style: TextStyle(color: Colors.white),),centerTitle: true,),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(10),
            child: Text('${index+1}  ${arrNames[index]}'));
          },
          separatorBuilder: (context, index) {
            return Divider(height: 4,);
          },
          itemCount: arrNames.length),
    );
  }
}
