import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {

  Widget showImageA() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/data1.jpg'),
    );
  }

  Widget showImageB() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/data2.png'),
    );
  }

  Widget showImageC() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/data3.png'),
    );
  }

  Widget showImageD() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/data4.png'),
    );
  }


  Widget showImageE() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/data5.png'),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'ข้อมูลแขนง',
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

                showImageB(),

                showImageC(),

                showImageD(),

                showImageE(),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
