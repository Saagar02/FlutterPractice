import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../control/database_helper.dart';
import '../control/list_control.dart';
import '../models/note.dart';
import 'note_detail.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  int count = 0;
  List<Note> noteList = [];

  @override
  Widget build(BuildContext context) {
    if (noteList.isEmpty) {
      noteList = List<Note>.empty();
      ListController.updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const NoteDetail(Note('','',2));
          }));
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.bodyMedium!;
    log("In listviewBuilder");
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  ListController.getPriorityColor(noteList[index].priority),
              child: const Icon(Icons.keyboard_arrow_right),
            ),
            title: Text(
              noteList[index].title,
              style: titleStyle,
            ),
            subtitle: Text(noteList[index].date),
            trailing: GestureDetector(
              onTap: () {
                ListController.deletNote(context, noteList[index]);
              },
              child: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return NoteDetail(Note(noteList[index]));
                })
              );
            },
          ),
        );
      },
    );
  }
}
