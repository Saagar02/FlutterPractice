import 'package:flutter/material.dart';
import 'package:navigatordemo/screen1.dart';
import 'package:navigatordemo/screen2.dart';
import 'package:navigatordemo/screen3.dart';
import 'package:navigatordemo/screen4.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Demo"),
        centerTitle: true,  
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen1();
                    }
                  )
                );
              }, 
              child:const Text("Screen 1")
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen2();
                    }
                  )
                );
              }, 
              child:const Text("Screen 2")
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen3();
                    }
                  )
                );
              }, 
              child:const Text("Screen 3")
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen4();
                    }
                  )
                );
              }, 
              child:const Text("Push Replacement")
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}