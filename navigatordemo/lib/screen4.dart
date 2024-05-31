import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget{
  const Screen4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 4"),
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
            /*ElevatedButton(
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
            ),*/
          ],
        ),
      ),
    );
  }
}