// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewWithListTile extends StatelessWidget {
   ListviewWithListTile({super.key});
var arrNames = ['Md. Sohanur Rahman Hridoy','Md. Ozaer Hossain', 'Nazmus Sakib Awarko', 'Zarif Tajul Arnob','Istiyak Ahmed Mahi', 'Mehedi Hasan','Apurbo Biswas','Sakib Al Wasse','Tahmid Riddho'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'ListView With ListTile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 2,right: 2,top: 1,bottom: 1),
              child: Card(
                elevation: 4,
  shadowColor: Colors.purpleAccent,
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    tileColor: Color(0xfff2a5fa),
                    leading: Container(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.purpleAccent[200],
                        backgroundImage: AssetImage('assets/images/student_boy.png'),
                      ),
                    ),
                    title: Text('${2102001+index}',style: TextStyle(fontWeight: FontWeight.bold),),
                    textColor: Colors.white,
                    subtitle: Text(arrNames[index]),
                    trailing: ElevatedButton(onPressed: () {

                    }, child: Text('Absent',style: TextStyle(color: Colors.white,),),style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent[200]),),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,thickness: 1,
            );
          },
          itemCount: arrNames.length),
    );
  }
}
