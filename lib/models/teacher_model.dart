class TeacherModel {
  String id;
  String category;
  String name;
  String user;
  String position;
  String university;
  String faculty;
  String major;
  String email;
  String callNum;
  String roomRest;
  String pathImage;

  TeacherModel(
      {this.id,
        this.category,
        this.name,
        this.user,
        this.position,
        this.university,
        this.faculty,
        this.major,
        this.email,
        this.callNum,
        this.roomRest,
        this.pathImage});

  TeacherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['Category'];
    name = json['Name'];
    user = json['User'];
    position = json['Position'];
    university = json['University'];
    faculty = json['Faculty'];
    major = json['Major'];
    email = json['Email'];
    callNum = json['CallNum'];
    roomRest = json['RoomRest'];
    pathImage = json['PathImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Category'] = this.category;
    data['Name'] = this.name;
    data['User'] = this.user;
    data['Position'] = this.position;
    data['University'] = this.university;
    data['Faculty'] = this.faculty;
    data['Major'] = this.major;
    data['Email'] = this.email;
    data['CallNum'] = this.callNum;
    data['RoomRest'] = this.roomRest;
    data['PathImage'] = this.pathImage;
    return data;
  }
}
