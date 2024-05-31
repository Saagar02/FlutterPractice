import 'package:flutter/material.dart';
import 'package:navigatordemo/screen2.dart';

class Screen1 extends StatelessWidget{
  const Screen1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child:const Text("Main Screen")
            ),
            const SizedBox(width: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen2();
                    }
                  )
                );
              }, 
              child:const Text("Screen 2")
            ),
          ],
        ),
      ),
    );
  }
}