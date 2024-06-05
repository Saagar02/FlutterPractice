import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'employee_model.dart';

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});
  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  List<Data> empData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: empData.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(empData[index].empName!),
                const SizedBox(width: 10),
                Text("${empData[index].empSalary!}"),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        child: const Icon(Icons.add),
      ),
    );
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    var responseData = json.decode(response.body);
    EmployeeModel empModel = EmployeeModel(responseData);
    setState(() {
      empData = empModel.data!;
    });
  }
}
