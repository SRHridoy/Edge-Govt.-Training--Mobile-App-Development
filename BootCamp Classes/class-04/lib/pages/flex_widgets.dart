import 'package:flutter/material.dart';

class FlexWidgets extends StatelessWidget {
  const FlexWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,title: Text('Flex',style: TextStyle(color: Colors.white),),),
      body: Flex(direction: Axis.vertical,
      children: <Widget>[
        Expanded(child: Container(color: Colors.purpleAccent,height: 200,)),
        Expanded(child: Container(color: Colors.lightBlueAccent,height: 200,)),
      
        Expanded(
          child: Row(
            children: [
              Container(color: Colors.red,height: 200,width: 200,),
              Container(color: Colors.green,height: 200,width: 200,),
            ],
          ),
        ),
      
      ],
      
      ),
    );
  }
}
