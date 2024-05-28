import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'dart:developer';
void main(){
  runApp(const MyApp());
}

class Login with ChangeNotifier{
  String userName;
  String password;

  Login(this.userName, this.password);

  void changePassword(String password){
    this.password = password;
    notifyListeners();
  }
}

class Employee with ChangeNotifier{
  int empId;
  String empName;
  String userName;
  String password;

  Employee({ required this.empId, required this.empName ,required this.userName ,required this.password});

  void changeEmployee(int empId , String empName , String userName , String password){
    this.empId = empId;
    this.empName = empName;
    this.userName = userName;
    this.password = password;

    notifyListeners();
  }
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){
          return Login("Sagar22","Sagar@22");
        }),
        ChangeNotifierProxyProvider<Login , Employee>(
          update: (context, value , to){
            return Employee(
              empId: 123,
              empName: "Sagar",
              userName: Provider.of<Login>(context,listen: false).userName,
              password: Provider.of<Login>(context,listen: false).password,
            );
          },
          create: (context){
            log("IN Create");
            return Employee(empId: 200, empName: "Amar", userName: "Amar_Chaudhari", password: "Amar@22");
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CompanyInfo(),
      ),
    );
  }
}

class CompanyInfo extends StatefulWidget{
  
  const CompanyInfo({super.key});
  @override
  State createState() => _CompanyInfo();
}

class _CompanyInfo extends State<CompanyInfo>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("proxyProvider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Name : ${Provider.of<Login>(context,).userName}"),
            const SizedBox(height: 20,),
            Text("Password : ${Provider.of<Login>(context,).password}"),
            const SizedBox(height: 20,),
            Text("Employee Name : ${Provider.of<Employee>(context,).empName}"),
            const SizedBox(height: 20,),
            Text(" Employee ID : ${Provider.of<Employee>(context,).empId}"),
            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){
                Provider.of<Login>(context,listen: false).changePassword("Chaudhari@22");
                Provider.of<Employee>(context,listen: false).changeEmployee(300,"Boss", "Boss@22", "Boss123");
              }, 
              child:const Text("Change Employee"),
            )
          ],
        ),
      ),
    );
  }
}