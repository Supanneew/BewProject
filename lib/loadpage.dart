import 'package:enetb/screens/detail_load.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 420;

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {

  void moveToListDown(int index){
    MaterialPageRoute route = MaterialPageRoute(builder: (value)=>DetailLoad(index: index,));
    Navigator.of(context).push(route);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เอกสาร',
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
                    print('Click 0');
                    moveToListDown(0);
                }
                  , child: Image.asset('assets/images/load1.png',width: imageWidth,),),


                FlatButton(onPressed: () {
                  print('Click 1');
                  moveToListDown(1);
                }
                  , child: Image.asset('assets/images/load2.png',width: imageWidth,),),
              ],
            ),
          )
        ],
      ),
    );
  }
}