import 'dart:convert';

import 'package:flutter_api/model_class.dart';
import 'package:http/http.dart' as http;

Future<List<Data>> getEmployeeInfo() async {
  Uri datauri = Uri.parse("https://reqres.in/api/unknown");
  http.Response response = await http.get(datauri);
  var responseData = json.decode(response.body);
  EmployeeData obj = EmployeeData(responseData);
  return obj.data!;
}
