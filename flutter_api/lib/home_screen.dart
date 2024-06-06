import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_api/emp_data_controller.dart';
import 'package:flutter_api/model_class.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<Data> empData = [];
  final List<Color> colorList = [
    Colors.amber,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.indigo,
    Colors.purpleAccent,
    Colors.orangeAccent,
    Colors.redAccent,
    Colors.grey,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API GET REQUEST",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade400,
      ),
      body: empData.isEmpty
          ? const Center(
              child: Text(
                "No data Availabel",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
            )
          : ListView.builder(
              itemCount: empData.isEmpty ? 1 : empData.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: colorList[index]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Name : ${empData[index].name}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "ID : ${empData[index].id}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Year : ${empData[index].year}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Color : ${empData[index].color}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Pantone Value : ${empData[index].pantoneValue}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 50,
          width: 70,
          child: FloatingActionButton(
            onPressed: () async {
              List<Data> empDataList = await getEmployeeInfo();
              setState(() {
                empData = empDataList;
              });
            },
            child: const Text(
              "Get Data",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }

  // void getEmployeeInfo() async {
  //   Uri datauri = Uri.parse("https://reqres.in/api/unknown");
  //   http.Response response = await http.get(datauri);
  //   var responseData = json.decode(response.body);

  //   EmployeeData obj = EmployeeData(responseData);
  //   setState(() {
  //     empData = obj.data!;
  //   });
  // }
}
