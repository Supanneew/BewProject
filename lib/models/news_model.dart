class NewsModel {
  String id;
  String name;
  String message;
  String pathImage;

  NewsModel({this.id, this.name, this.message, this.pathImage});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    message = json['Message'];
    pathImage = json['PathImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['Message'] = this.message;
    data['PathImage'] = this.pathImage;
    return data;
  }
}