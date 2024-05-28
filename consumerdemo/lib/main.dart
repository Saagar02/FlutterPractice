import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create:(context){
            return Country(countryName:"India",countryPopulation:141);
          },
        ),

        ChangeNotifierProvider(
          create: (context){
            return CountryAssets(capital:"Delhi", gdp:3.42);
          },
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CountryDetails(),
      ),
    );
  }
}

class CountryDetails extends StatefulWidget{
  const CountryDetails({super.key});
  @override
  State createState() => _CountryDetails();
}

class _CountryDetails extends State<CountryDetails>{
  @override
  Widget build(BuildContext context){
    log("In countryDetailsBuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Consumer 2"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context,provider,child){
              return Column(
                children: [
                  Text(Provider.of<Country>(context).countryName),
                  const SizedBox(height: 20,),
                  Text("${Provider.of<Country>(context).countryPopulation}"),
                  const SizedBox(height: 20,),
                  Text(Provider.of<CountryAssets>(context).capital),
                  const SizedBox(height: 20,),
                  Text("${Provider.of<CountryAssets>(context).gdp}"),
                  const SizedBox(height: 20,),

                  ElevatedButton(
                    onPressed: (){
                      Provider.of<Country>(context,listen: false).changeData("USA",12);
                      Provider.of<CountryAssets>(context,listen: false).changeAssets("Washington",5.2);
                    }, 
                    child: const Text("Change Country"))
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

class Country with ChangeNotifier{
  String countryName;
  int countryPopulation;
  Country({required this.countryName,required this.countryPopulation});
  
  void changeData(String countryName, int countryPopulation){
    this.countryName = countryName;
    this.countryPopulation = countryPopulation;
    notifyListeners();
  }
}

class CountryAssets with ChangeNotifier{
  String capital;
  double gdp;

  CountryAssets({required this.capital, required this.gdp});

  void changeAssets(String capital , double gdp){
    this.capital = capital;
    this.gdp = gdp;
    notifyListeners();
  }
}