import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';

class ViewSingleEmployee extends StatefulWidget {
  const ViewSingleEmployee({super.key});
  @override
  State<ViewSingleEmployee> createState() => _ViewSingleEmployeeState();
}

class _ViewSingleEmployeeState extends State<ViewSingleEmployee> {
  Map<String, dynamic> empData = {};

  String printEmployeeData(String type) {
    return empData.isEmpty
        ? "null"
        : type == "name"
            ? empData["employee_name"]
            : "${empData["employee_salary"]}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Employee Name ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                printEmployeeData("name"),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Employee Salary ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                printEmployeeData("salary"),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        child: const Icon(Icons.add),
      ),
    );
  }

  void getEmployeeData() async {
    Uri parseduri = Uri.parse(
        "https://dummy.restapiexample.com/api/v1/employee/1"); //parsing the string into components
    http.Response response = //using Response  class from http package
        await http.get(parseduri); // use http.get() to send get requrest to URL
    var responseData = json.decode(response.body);
    setState(() {
      empData = responseData['data'];
    });
  }
}
