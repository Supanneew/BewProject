import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';

class RoompageA extends StatefulWidget {
  @override
  _RoompageAState createState() => _RoompageAState();
}

class _RoompageAState extends State<RoompageA> {


  Widget showImage() {
    return Container(
      width: 350.0,
      child: Image.asset('assets/images/lab2.jpg'),
    );
  }

  Widget showName() {
    return Text('ชื่อห้อง : ห้องประลองกลาง',
      style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 20,color: Colors.deepOrange ),
    );
  }

  Widget showDetail() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('สถานที่ตั้ง : 62-514 อาคาร 62', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('วิทยาลัยเทคโนโลยีอุตสาหกรรม', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        title: Text('ห้องประลองกลาง',
          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),),centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showImage(),
              SizedBox(
                height: 14.0,
              ),
              showName(),
              SizedBox(
                height: 14.0,
              ),
              showDetail(),
            ],
          ),
        ),
      ),


    );
  }
}
