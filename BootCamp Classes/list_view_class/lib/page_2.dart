import 'package:flutter/material.dart';

class ListViewPage2 extends StatelessWidget {
  const ListViewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text('Another Page'),
      ),
      backgroundColor: Colors.green,
      body: Center(child: Text('This is another page'),),
    );
  }
}
