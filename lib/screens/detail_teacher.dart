import 'package:enetb/models/teacher_model.dart';
import 'package:flutter/material.dart';

class DetailTeacher extends StatefulWidget {
  final TeacherModel teacherModel;

  DetailTeacher({Key key, this.teacherModel}) : super(key: key);

  @override
  _DetailTeacherState createState() => _DetailTeacherState();
}

class _DetailTeacherState extends State<DetailTeacher> {
//  Field
  TeacherModel model;

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.teacherModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            showImage(),
            showName(),
            showTeacherDetail('รหัสอาจารย์', model.user),
            showTeacherDetail('ตำแหน่งราชการ', model.position),
            showTeacherDetail('มหาวิทยาลัย', model.university),
            showTeacherDetail('คณะ', model.faculty),
            showTeacherDetail('ภาควิชา/สาขาวิา', model.major),
            showTeacherContact(Icons.email, Text(model.email, style: TextStyle(color: Colors.lightBlue),)),
            showTeacherContact(Icons.phone, Text(model.callNum)),
            showTeacherContact(Icons.home, Text(model.roomRest)),
          ],
        ),
      ),
    );
  }

  ListTile showTeacherContact(IconData iconData, Widget widget) => ListTile(
        leading: Icon(iconData),
        title: widget,
      );

  Widget showTeacherDetail(String title, String detail) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          width: 100.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Text(detail),
      ],
    );
  }

  Text showName() => Text(
        model.name,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget showImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          width: 250.0,
          height: 250.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(model.pathImage),
          ),
        )
      ],
    );
  }
}
