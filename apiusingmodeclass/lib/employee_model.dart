class EmployeeModel {
  String? status;
  List<Data>? data;
  String? message;

  EmployeeModel(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = [];
  }
}

class Data {
  int? empId;
  String? empName;
  int? impAge;
  int? empSalary;
  String? empImage;
}
