class EmployeeData {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;

  EmployeeData(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    data = [];
    if (json['data'] != null) {
      json['data'].forEach((mapobj) {
        Data obj = Data(mapobj);
        data!.add(obj);
      });
    }
  }
}

class Data {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  Data(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    year = json['year'];
    color = json['color'];
    pantoneValue = json['pantone_value'];
  }
}
