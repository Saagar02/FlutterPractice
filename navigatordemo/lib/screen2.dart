import 'package:flutter/material.dart';
import 'package:navigatordemo/screen3.dart';

class Screen2 extends StatelessWidget{
  const Screen2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
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
              child:const Text("Previous Screen")
            ),
            const SizedBox(width: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen3();
                    }
                  )
                );
              }, 
              child:const Text("Screen 3")
            ),
          ],
        ),
      ),
    );
  }
}