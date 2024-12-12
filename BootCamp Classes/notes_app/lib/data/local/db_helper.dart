import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{
  /// Singleton
  DBHelper._();
  static final  DBHelper getInstance = DBHelper._();

  //Table note:
  static final String TABLE_NOTE = 'note';
  static final String COLUMN_NOTE_SNO = 's_no';
  static final String COLUMN_NOTE_TITLE = 'title';
  static final String COLUMN_NOTE_DESCRIPTION = 'description';


  Database? myDB;
  /// db open(path -> if exits then open else create db)
  Future<Database> getDB() async{
    // if(myDB!=null){
    //   return myDB!;
    // }else{
    //   myDB = await openDB();
    //   return myDB!;
    // }
    myDB ??= await createDB();
    return myDB!;
  }
  Future<Database> createDB() async{
    Directory appDir = await getApplicationDocumentsDirectory();
    
    String dbPath = join(appDir.path,'noteDB.db');

    return await openDatabase(dbPath,onCreate: (db, version) {
      /// create tables here:
      db.execute('''
      CREATE TABLE $TABLE_NOTE(
        $COLUMN_NOTE_SNO INTEGER PRIMARY KEY AUTOINCREMENT,
        $COLUMN_NOTE_TITLE TEXT,
        $COLUMN_NOTE_DESCRIPTION TEXT
      );
      ''');
    },version: 1);
  }


  /// all queries
  /// Insertion :
  Future<bool> addNote({required String mTitle, required String mDesc})async{
    var db = await getDB();
    /// db.execute(SQL) diyeo insert possible but shortcut ache....

    int rowsEffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE:mTitle,
      COLUMN_NOTE_DESCRIPTION:mDesc
    });

    return rowsEffected>0;
  }

  /// getting all data:
  Future<List<Map<String,dynamic>>> getAllNotes() async{
    var db = await getDB();
    ///SELECT * FROM note;
    List<Map<String,dynamic>> mData = await db.query(TABLE_NOTE,);
    return mData;
  }

}