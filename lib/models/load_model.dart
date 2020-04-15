class LoadModel {
  String id;
  String category;
  String name;
  String pathFile;

  LoadModel({this.id, this.category, this.name, this.pathFile});

  LoadModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['Category'];
    name = json['Name'];
    pathFile = json['PathFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Category'] = this.category;
    data['Name'] = this.name;
    data['PathFile'] = this.pathFile;
    return data;
  }
}