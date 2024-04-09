import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class sqlhelper {
  ///1.create database
  static Future<sql.Database> myData() async {
    return sql.openDatabase(
      'mynote.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTable1(database);
      },
    );
  }

  ///2.create table
  static Future<void> createTable1(sql.Database database) async {
    await database.execute("""CRETE TABLE notes(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT,
    note TEXT,
    createdAt TIMESTAMP NOT NULL DEAFAULT CURRENT_TIMESTAMP)""");
  }
  ///insert data
  static Future<int> createNote (String title,String note)async{
    final db=await sqlhelper.myData();
    final data={'title':title,'note':note};
    final id=await db.insert("notes", data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }
  ///read all data from table
  static Future<List<Map<String,dynamic>>> readNotes()async{
    final db=await sqlhelper.myData(); ///to open data base
    return db.query('notes',orderBy: 'id'); ///view table orderby id
  }

  ///update data
  static Future<int> updateNote(int id,String titlenew,String notenew)async{
    final db=await sqlhelper.myData();

    final newdata={
      'title':titlenew,
      'note':notenew,
      'createdAt': DateTime.now().toString()
    };
    final result=await db.update('notes', newdata,where: 'id=?',whereArgs: [id]);
    return result;
  }
  static Future<void> deleteNote(int id)async{
    final db=await sqlhelper.myData();
    try{
      await db.delete('notes',where: 'id=?',whereArgs: [id]);
    }catch(err){
      debugPrint("something is wrong");
    }
  }
}
