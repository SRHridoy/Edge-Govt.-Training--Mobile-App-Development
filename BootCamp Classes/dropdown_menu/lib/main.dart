// ignore_for_file: prefer_const_constructors

import 'package:dropdown_menu/pages/apple.dart';
import 'package:dropdown_menu/pages/banana.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDown(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/apple': (context) => const Apple(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/banana':(context) => const Banana(),
        //'/second': (context) => const Banana(),
      },
    );
  }
}

class DropDown extends StatefulWidget {
  DropDown({super.key});
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  // List of items for the dropdown
  final List<String> _items = ['Apple Store', 'Banana Store', 'Cherry Store', 'Date Store', 'Elderberry Store'];

  // Selected item
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop down Menu'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            const Text(
              'Select the page you want to go : ',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.blue,),//<-- SEE HERE
              child: DropdownButton<String>(
                value: _selectedItem,
                hint: const Text('Choose an page',style: TextStyle(color: Colors.white),),
                items: _items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                    if(_selectedItem == 'Apple Store'){
                      Navigator.pushNamed(context, '/apple');
                    }else if(_selectedItem == 'Banana Store'){
                      Navigator.pushNamed(context, '/banana');
                    }
                  });
                },
                isExpanded: true, // Makes the dropdown stretch to fit the parent
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _selectedItem != null
                  ? 'You selected: $_selectedItem'
                  : 'No item selected',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

    );
  }
}
