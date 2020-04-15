import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';

class SubpageB extends StatefulWidget {
  @override
  _SubpageBState createState() => _SubpageBState();
}

class _SubpageBState extends State<SubpageB> {

  Widget showImage() {
    return Container(
      width: 380.0,
      child: Image.asset('assets/images/flow55.png'),
    );
  }

  Widget showName() {
    return Text('หลักสูตรปีการศึกษา 2555-2559',
      style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 20,color: Colors.deepOrange ),
    );
  }

  Widget showDetail() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('จำนวนหน่วยกิตรวมตลอดหลักสูตร 147 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('ก. หมวดวิชาศึกษาทั่วไป 30 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('ข. หมวดวิชาเฉพาะ 105 หน่วยกิต แบ่งออกเป็น', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('>>> กลุ่มวิชาพื้นฐานทางวิทยาศาสตร์ 21 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('>>> กลุ่มวิชาพื้นฐานวิศวกรรม 29 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('>>> กลุ่มวิชาบังคับเฉพาะแขนง 40 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('>>> กลุ่มวิชาเลือกแขนง 15 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('ค. สหกิจศึกษา (ฝึกประสบการณ์วิชาชีพ) 6 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
          SizedBox(
            height: 4.0,
          ),
          Text('ง. หมวดวิชาเลือกเสรี 6 หน่วยกิต', style: TextStyle(fontFamily: fontFam, fontSize: 18,),),
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
        title: Text('หลักสูตรปีการศึกษา 2560-ปัจจุบัน',
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
