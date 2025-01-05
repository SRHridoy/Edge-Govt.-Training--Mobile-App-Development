import 'package:flutter/material.dart';
import 'package:list_view_class/page_2.dart';

class ListViewCustom extends StatelessWidget {
  ListViewCustom({super.key});

  List<Map<String, String>> students = [
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
    {'id': '2102002', 'name': 'Md.Sohanur Rahman Hridoy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('List View',style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white12,
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewPage2(),));
              },
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text(students[index]['id']!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              subtitle: Text(students[index]['name']!,style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.navigate_next,color: Colors.white,),
            ),
          );
        },
      ),
    );
  }
}
