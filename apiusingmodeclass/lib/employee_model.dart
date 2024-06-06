import 'dart:developer';

class EmployeeModel {
  String? status;
  List<Data>? data;
  String? message;

  EmployeeModel(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = [];
    log("in Employee Model");
    if (json['data'] != null) {
      json['data'].forEach((mapObject) {
        Data obj = Data(mapObject);
        data!.add(obj);
      });
    }
  }
}

class Data {
  int? empId;
  String? empName;
  int? impAge;
  int? empSalary;
  String? empImage;

  Data(Map<String, dynamic> json) {
    log("in Data");
    empId = json['id'];
    empName = json['employee_name'];
    impAge = json['employee_age'];
    empSalary = json['employee_salary'];
    empImage = json['profile_image'];
  }
}
