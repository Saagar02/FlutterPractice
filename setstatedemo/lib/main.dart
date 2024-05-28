import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @ override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EphemeralDemo(),
    );
  }
}

class EphemeralDemo extends StatefulWidget{
  const EphemeralDemo({super.key});

  @override
  State createState() => _EphemeralDemoState();
}

class _EphemeralDemoState extends State{

  @ override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        title: const Text("Ephemeral State Demo"),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Course(courseName : "Java"),
          SizedBox(height: 50),
          Course(courseName : "Flutter"),
          SizedBox(height: 50,),
          Course(courseName: "C programing")
        ],
      ),
    );
  }
}

class Course extends StatefulWidget{
  final String courseName;
  const Course({super.key, required this.courseName});

  @override
  State createState() => _CourseState();
}

class _CourseState extends State<Course>{
  _CourseState();

  int referanceCount = 0;
  @override
  Widget build(BuildContext context) {
    log("In CourseName");
    log(widget.courseName);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            setState((){
              referanceCount++;
            });
          },
          child: Container(
            height: 70,
            width: 100,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(widget.courseName,
              style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),

        const SizedBox(width: 20,),

        Container(
          height: 50,
          alignment: Alignment.center,
            width: 100,
            decoration:const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text("Count $referanceCount",
              style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.center,
            ),
        ),
      ],
    );
  }
}