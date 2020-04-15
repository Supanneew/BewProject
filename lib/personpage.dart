import 'package:enetb/perA.dart';
import 'package:enetb/perB.dart';
import 'package:enetb/perC.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 350;

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(
        'บุคลากร',
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
            padding: const EdgeInsets.only(top: 40.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return PerA();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/1-01.png',width: imageWidth,),),

                  SizedBox(
                    height: 30.0,
                  ),

                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return PerB();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/2-01.png',width: imageWidth,),),

                  SizedBox(
                    height: 16.0,
                  ),

                  FlatButton(onPressed: () {
                    MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return PerC();});
                    Navigator.of(context).push(route);
                  }
                    , child: Image.asset('assets/images/3-01.png',width: imageWidth,),),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
