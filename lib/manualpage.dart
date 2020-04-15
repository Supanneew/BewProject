import 'package:enetb/manualA.dart';
import 'package:enetb/manualB.dart';
import 'package:enetb/manualC.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 180;

class ManualPage extends StatefulWidget {
  @override
  _ManualPageState createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คู่มือการใช้งาน',
        style: TextStyle(
        fontFamily: fontFam,fontWeight: FontWeight.bold,
        fontSize: 25,),),centerTitle: true, backgroundColor: PrimaryColor,),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return ManualA();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/man1.png',width: imageWidth,),),


                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return ManualB();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/man2.png',width: imageWidth,),),


                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return ManualC();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/man3.png',width: imageWidth,),),
              ],
            ),
          )
        ],
      ),

    );
  }
}

