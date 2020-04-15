import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 420;

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ดาวน์โหลด',
          style: TextStyle(
            fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),), centerTitle: true,),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/lo1.png',width: imageWidth,),),


                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/lo2.png',width: imageWidth,),),
              ],
            ),
          )
        ],
      ),
    );
  }
}