
import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import'dart:developer';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    log("In Myapp Build");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Player(playerName:"Virat",jerNo: 18);
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return Match(matchNo: 200 , runs: 300);
          },
        ),
      ],

      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MatchSummery(),
      ),
    );
  }
}

class MatchSummery extends StatefulWidget{

  const MatchSummery({super.key});
  @override

  State createState() => _MatchSummery();
}

class _MatchSummery extends State<MatchSummery>{

  @override
  Widget build(BuildContext context){
    log("In _MatchSummery build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade400,
        title: const Text("Consumer Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<Player>(context).playerName,
            ),
            const SizedBox(height: 50,),
            Text(
              "${Provider.of<Player>(context).jerNo}",
            ),
            const SizedBox(height: 50,),
            Consumer(
              builder: (constext, provider, child){
                log("In consumer");
                return Column(
                  children: [
                    Text(
                      "${Provider.of<Match>(context).matchNo}",
                    ),
                    const SizedBox(height: 50,),
                    Text(
                      "${Provider.of<Match>(context).runs}",
                    ),
                  ],
                );
            }),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                Provider.of<Match>(context , listen: false).changedData(500,800);
              }, 
              child:const Text("Change Data")
            ),
            const SizedBox(height: 20,),
            const ExtraClass(),
          ],
        ),
      ),
    );
  }
}

class Player {
  String playerName;
  int jerNo;
  Player({required this.playerName , required  this.jerNo});
}

class Match with ChangeNotifier{
  int matchNo;
  int runs;
  Match({required this.matchNo , required this.runs});

  void changedData(int matchNo , int runs){
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}

class ExtraClass extends StatelessWidget{
  
  const ExtraClass({super.key});
  @override
  Widget build(BuildContext context){
    log("In extraClass Build");
    return Consumer(builder: (context, value, child){
      log("$value");
      return Text("${Provider.of<Match>(context).runs}");
    });
  }
}