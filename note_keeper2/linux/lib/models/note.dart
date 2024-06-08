class Note {
  int? _id;
  String? _title;
  String? _description;
  String? _date;
  int? _priority;

  Note(this._id, this._title, this._date, this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  Note.fromMap(Map<String,dynamic> map){
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _date = map['date'];
    _priority  = map['priority'];
  }

  int get id => _id!;
  String get title => _title!;
  String get description => _description!;
  String get date => _date!;
  int get priority => _priority!;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  set description(String newDescription) {
    _description = newDescription;
  }

  set date(String newDate) {
    _date = date;
  }

  set priority(int newPriority) {
    _priority = newPriority;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};

    if (id <= 0) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _date;
    map['priority'] = _priority;

    return map;
  }


}
