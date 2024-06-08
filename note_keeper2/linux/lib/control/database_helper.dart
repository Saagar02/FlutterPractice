import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/note.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static Database? _database;

  String noteTable = 'note_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  String colPriority = 'priority';
  String colDate = 'date';

  Future<Database> get database async {
    // ignore: prefer_conditional_assignment
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = "${directory.path} notes.db";

    Database notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  void _createDb(Database db, newVersion) async {
    await db.execute('''CREATE TABLE $noteTable(
    $colId INTEGER PRIMARY KEY AUTOINCREMENT, 
    $colId TEXT, 
    $colDescription TEXT, 
    $colPriority INTEGER, 
    $colDate TEXT)''');
  }

  DatabaseHelper.createInstance();

  factory DatabaseHelper() {
    // ignore: prefer_conditional_assignment
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper.createInstance();
    }
    return _databaseHelper!;
  }

  //Fetch the object from DB
  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await database;
    var result = await db.query(noteTable, orderBy: '$colPriority ASC');
    return result;
  }

  Future<List<Note>> getNoteList() async {
    var noteMapList = await getNoteMapList();
    int count = noteMapList.length;
    List<Note> noteList = List<Note>.empty();

    for (int i = 0; i < count; i++) {
      noteList.add(Note.fromMap(noteMapList[i]));
    }
    return noteList;
  }

  //Insert the object to DB
  Future<int> insertToDb(Note note) async {
    Database db = await database;
    var result = await db.insert(noteTable, note.toMap());
    return result;
  }

  //Update the object from DB
  Future<int> updateDb(Note note) async {
    Database db = await database;
    var result = await db.update(noteTable, note.toMap(),
        where: '$colId = ?', whereArgs: [note.id]);
    return result;
  }

  //Delet the object from DB
  Future<int> deletDb(int id) async {
    Database db = await database;
    var result = await db.delete(noteTable, where: '$colId = $id');
    return result;
  }

  //Get count of object
  Future<int> countDb() async {
    Database db = await database;
    List<Map<String, dynamic>> map =
        await db.rawQuery('SELECT COUNT (*) from $noteTable');
    int result = Sqflite.firstIntValue(map)!;
    return result;
  }
}
