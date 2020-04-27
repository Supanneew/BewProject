
import 'package:enetb/utility/my_lancher.dart';
import 'package:flutter/material.dart';

import 'WebviewScreen.dart';

class CalendaraPage extends StatefulWidget {
  @override
  _CalendaraPageState createState() => _CalendaraPageState();
}

class _CalendaraPageState extends State<CalendaraPage> {
//  Field

//Method
  Widget showImage() {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Image.asset('assets/images/calendar.png'),
    );
  }

  Widget showButton() {
    return RaisedButton(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text('ปฏิทินเพื่อการศึกษา',
        style: TextStyle(fontFamily: fontFam, fontSize: 18, fontWeight: FontWeight.bold,),),
      onPressed: () {
        MyLancher().lancherToWeb('http://acdserv.kmutnb.ac.th/academic-calendar');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        title: Text('ปฏิทินเพื่อการศึกษา',
          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),),centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.deepOrange),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showImage(),
              SizedBox(
                height: 16.0,
              ),
              showButton(),
            ],
          ),
        ),
      ),
    );
  }
}
