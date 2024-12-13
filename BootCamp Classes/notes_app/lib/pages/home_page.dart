// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:notes_app/data/local/db_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomPageState();
}

class _HomPageState extends State<HomePage> {
  /// controllers:
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List<Map<String,dynamic>> allNotes =[];
  DBHelper? dbRef;
  @override
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance;
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),

      body: allNotes.isNotEmpty?ListView.builder(itemBuilder: (context, index) {
        ///all notes viewed here:
        return ListTile(
          leading: Text('${allNotes[index][DBHelper.COLUMN_NOTE_SNO]}'),
          title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
          subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESCRIPTION]),
          trailing: SizedBox(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              InkWell(
                  onTap: () {
                    // Update the controllers with the selected note data
                    titleController.text = allNotes[index][DBHelper.COLUMN_NOTE_TITLE];
                    descriptionController.text = allNotes[index][DBHelper.COLUMN_NOTE_DESCRIPTION];

                    // Open the bottom sheet
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return getBottomSheetWidget(
                          isUpdate: true,
                          sNo: allNotes[index][DBHelper.COLUMN_NOTE_SNO],
                        );
                      },
                    );
                  },

                  child: Icon(Icons.edit)),
              InkWell(
                  onTap: () async{
                    bool check = await dbRef!.deleteNote(sNo: allNotes[index][DBHelper.COLUMN_NOTE_SNO]);
                    if(check){
                      getNotes();
                    }
                  },
                  child: Icon(Icons.delete,color: Colors.red,)),
            ],),
          ),
        );
      },itemCount: allNotes.length,):Center(
        child: Text('No Notes noted!'),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () async{
        /// note to be added from here:
        showModalBottomSheet(context: context, builder: (context) {

          return getBottomSheetWidget();
        },);
      },child: Icon(Icons.add),),

    );
  }

  void getNotes() async{
    allNotes = await dbRef!.getAllNotes();
    setState(() {

    });
  }

  Widget getBottomSheetWidget({bool isUpdate = false,int sNo = 0}){
    String errorMessage ='*Please fill the required fields!';
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
      ),

      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(isUpdate? 'Update Note':'Add Note',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
            ),
            SizedBox(height: 21,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Enter title here',
                label: Text('Text *'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              ),
            ),
            SizedBox(height: 11),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Enter description here',
                label: Text('Desc *'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              ),
            ),
            SizedBox(height: 21,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          side: BorderSide(
                              width: 1
                          )
                      ),
                      onPressed: () async{
                        var title = titleController.text;
                        var desc = descriptionController.text;
                        if(title.isNotEmpty && desc.isNotEmpty){
                          bool isAdded = isUpdate? await dbRef!.updateNote(title: title, desc: desc, sNo: sNo):await dbRef!.addNote(mTitle: title, mDesc: desc);
                          if(isAdded){
                            getNotes();
                          }
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage)));
                        }
                        titleController.clear();
                        descriptionController.clear();
                        Navigator.pop(context);
                      }, child: Text(isUpdate? 'Update Note':'Add Note',style: TextStyle(color: Colors.green),)),
                ),
                SizedBox(width: 11),
                Expanded(
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          side: BorderSide(
                              width: 1
                          )
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }, child: Text('Cancel',style: TextStyle(color: Colors.red),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
