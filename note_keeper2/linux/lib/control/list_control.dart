import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../models/note.dart';
import '../screens/note_detail.dart';
import 'database_helper.dart';

class ListController {
  static Color getPriorityColor(int priority) {
    if (priority == 1) {
      return Colors.red;
    } else {
      return Colors.yellow;
    }
  }

  static List<Note> updateListView() {
    List<Note> listOfnote = List<Note>.empty();
    DatabaseHelper dbobj = DatabaseHelper();
    final Future<Database> dbFuture = dbobj.initializeDatabase();
    dbFuture.then((Database) {
      DatabaseHelper dbObj = DatabaseHelper.createInstance();
      Future<List<Note>> noteListFuture = dbObj.getNoteList();
      noteListFuture.then((noteList) {
        listOfnote = noteList;
      });
    });
    return listOfnote;
  }

  void navigateToDeatil(BuildContext context,Note note, String title){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context){
        return NoteDetail();
      })
    );
  }
  static void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void deletNote(BuildContext context, Note note) async {
    DatabaseHelper dbObj = DatabaseHelper.createInstance();
    int result = await dbObj.deletDb(note.id);
    updateListView();
    if (result != 0) {
      _showSnackBar(context, 'Note Deleted Successfully');
    }
  }
}
