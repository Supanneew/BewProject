import 'package:enetb/roompageA.dart';
import 'package:enetb/roompageB.dart';
import 'package:enetb/roompageC.dart';
import 'package:flutter/material.dart';


const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 450;

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'ห้องเรียน',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return RoompageA();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/lab.png',width: imageWidth,),),


                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return RoompageB();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/kdtv.png',width: imageWidth,),),


                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return RoompageC();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/mac.png',width: imageWidth,),),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
