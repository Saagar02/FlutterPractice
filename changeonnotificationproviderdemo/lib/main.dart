import'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const ProviderDemo());
}

class ProviderDemo extends StatelessWidget{

  const ProviderDemo({super.key});
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) {
        return Company(companyName: "Google", empCount: 250);
      },
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ) ,
    );
  }
}

class Company extends ChangeNotifier{
  String companyName;
  int empCount;

  Company({required this.companyName,required this.empCount});

  void changeCompany(String companyName , int empCount){
    this.companyName = companyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeOnNotifier Provider",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).companyName,
            style:const TextStyle(
              fontSize: 20,
              color: Colors.red
            ) ,),
            const SizedBox(height: 20,),
            Text('${Provider.of<Company>(context).empCount}',
            style:const TextStyle(
              fontSize: 20,
              color: Colors.red
            ) ,),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed:()=>{
                Provider.of<Company>(context,listen: false).changeCompany("TCS", 300),
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade100),
              ),
              child: const Text("Press me",style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}