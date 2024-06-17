import 'package:flutter/material.dart';
void main(){
  runApp(mypp());
}


class mypp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      color: Colors.green,
      home: landingPage(),
    );
  }
}

class landingPage extends StatelessWidget{
  @override
  var color = Colors.green;
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: color.shade100,
        appBar: AppBar(
          
          centerTitle: true,
          title: Text("Landing Page"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    prefixIcon: Icon(Icons.email_outlined),
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black
              
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(
                      
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}