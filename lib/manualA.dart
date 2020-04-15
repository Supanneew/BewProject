import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 120;

class ManualA extends StatefulWidget {
  @override
  _ManualAState createState() => _ManualAState();
}

class _ManualAState extends State<ManualA> {
  Widget showImageA() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/teachernew.png'),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'คู่มือการใช้งานสำหรับบุคลากร',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showImageA(),

              ],
            ),
          ),
        ),
      ),


    );
  }
}
