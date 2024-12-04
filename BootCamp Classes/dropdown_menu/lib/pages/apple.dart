import 'package:flutter/material.dart';

class Apple extends StatelessWidget {
  const Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apple Store')),
      body: Stack(
        children: [
          Image(image: AssetImage('apples.jpg'),fit: BoxFit.cover,width: MediaQuery.sizeOf(context).width,height: MediaQuery.sizeOf(context).height,),
        ],
      )
    );
  }
}
