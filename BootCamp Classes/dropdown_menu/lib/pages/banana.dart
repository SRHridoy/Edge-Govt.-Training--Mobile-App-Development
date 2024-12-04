import 'package:flutter/material.dart';

class Banana extends StatelessWidget {
  const Banana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Banana Store')),
        body: Stack(
          children: [
            Image(image: AssetImage('bananas.jpg'),fit: BoxFit.cover,width: MediaQuery.sizeOf(context).width,height: MediaQuery.sizeOf(context).height,),
          ],
        )
    );
  }
}
