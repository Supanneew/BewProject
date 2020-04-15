import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enetb/models/teacher_model.dart';
import 'package:enetb/screens/detail_teacher.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 350;

class PerA extends StatefulWidget {
  @override
  _PerAState createState() => _PerAState();
}

class _PerAState extends State<PerA> {
//  Field

  List<TeacherModel> teacherModels = List();

//  Method

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllTeacher();
  }

  Future<void> readAllTeacher() async {
    String url = 'https://androidthai.in.th/bew/getAllTeacher.php';
    try {
      Response response = await Dio().get(url);
      var result = json.decode(response.data);
      for (var map in result) {
        TeacherModel model = TeacherModel.fromJson(map);
        teacherModels.add(model);
      }
    } catch (e) {}
  }

  void moveToDetail(int index) {
    MaterialPageRoute route = MaterialPageRoute(
        builder: (value) => DetailTeacher(
              teacherModel: teacherModels[index],
            ));
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'อาจารย์ประจำ',
          style: TextStyle(
            fontFamily: fontFam,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      moveToDetail(0);
                    },
                    child: Image.asset(
                      'assets/images/t1.png',
                      width: imageWidth,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      moveToDetail(1);
                    },
                    child: Image.asset(
                      'assets/images/t2.png',
                      width: imageWidth,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      moveToDetail(2);
                    },
                    child: Image.asset(
                      'assets/images/t3.png',
                      width: imageWidth,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      moveToDetail(3);
                    },
                    child: Image.asset(
                      'assets/images/t4.png',
                      width: imageWidth,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      moveToDetail(4);
                    },
                    child: Image.asset(
                      'assets/images/t5.png',
                      width: imageWidth,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
