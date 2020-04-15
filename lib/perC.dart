import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 350;

class PerC extends StatefulWidget {
  @override
  _PerCState createState() => _PerCState();
}

class _PerCState extends State<PerC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(
        'เจ้าหน้าที่/วิศวกร',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/e1.png',width: imageWidth,),),



              ],
            ),
          )
        ],
      ),

    );
  }
}
