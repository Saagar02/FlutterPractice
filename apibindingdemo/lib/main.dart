import 'dart:convert';
import 'dart:developer';

import'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  } 
}

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
  @override
  State createState() => _MainScreen();
}

class _MainScreen extends State{

  var empData = [ ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        
      ),
      body: ListView.builder(
        itemCount: empData.length,
        itemBuilder: (context,index){
          return Row(
            children: [
              Text(empData[index]['employee_name']),
              const SizedBox(width: 20,),
              Text("${empData[index]['employee_salary']}")
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          getFunctionData();
        },
        child: const Text("Get Data"),
      ),
    );
  }

  void getFunctionData() async{
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    
    var responseData = json.decode(response.body);
    //log("${responseData['data']}");
    setState(){
      empData = responseData['data'];
    }
    
  }
}