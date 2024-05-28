import'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const ProviderDemo());
}

class ProviderDemo extends StatelessWidget{
  const ProviderDemo({super.key});
  @override
  Widget build(BuildContext context){
    return Provider(
      create: (context) {
        return Company(companyName:"Google",empCount:250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});
  
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo",),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).companyName),
            const SizedBox(height: 20,),
            Text("${Provider.of<Company>(context).empCount}"),
          ],
        ),
      ),
    );
  }
}
class Company{
  String companyName;
  int empCount;
  Company({required this.companyName,required this.empCount});
}