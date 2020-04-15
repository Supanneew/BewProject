import 'package:enetb/MenuOnlineScreen.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
      String fontFam = 'Quark';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
//  Field

  String urlKdtv = "http://broadcast.elec.cit.kmutnb.ac.th/kdtv/";
  String urlEnetb = "http://broadcast.elec.cit.kmutnb.ac.th/main/en/";
  String urlCo = "http://broadcast.elec.cit.kmutnb.ac.th/co-operative/";
  String urlProject = "http://broadcast.elec.cit.kmutnb.ac.th/project/index.php";


//  Method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('เว็บไซต์',
          style: TextStyle(
            fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),),centerTitle: true, backgroundColor: PrimaryColor),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          color: Colors.white,
          child: Center(
            child: Center(

              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child : ButtonTheme(
                      minWidth: 250.0,
                      height: 50.0,
                      child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Color(0xffee6200),
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('สถานีโทรทัศน์ระบบดิจิตอล',
                          style: TextStyle(fontFamily: fontFam, fontSize: 20, fontWeight: FontWeight.bold,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlKdtv,
                                  titleString: 'สถานีโทรทัศน์ระบบดิจิตอล',
                                );
                              }));
                        },
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child : ButtonTheme(
                      minWidth: 250.0,
                      height: 50.0,
                      child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Color(0xfffe0000),
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('แขนงวิชา',
                          style: TextStyle(fontFamily: fontFam, fontSize: 20, fontWeight: FontWeight.bold,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlEnetb,
                                  titleString: 'แขนงวิชา',
                                );
                              }));
                        },
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child : ButtonTheme(
                      minWidth: 250.0,
                      height: 50.0,
                      child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Color(0xffee6200),
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('สหกิจศึกษา',
                          style: TextStyle(fontFamily: fontFam, fontSize: 20, fontWeight: FontWeight.bold,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlCo,
                                  titleString: 'สหกิจศึกษา',
                                );
                              }));
                        },
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child : ButtonTheme(
                      minWidth: 250.0,
                      height: 50.0,
                      child:  RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Color(0xfffe0000),
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text('ปริญญานิพนธ์',
                          style: TextStyle(fontFamily: fontFam, fontSize: 20, fontWeight: FontWeight.bold,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlProject,
                                  titleString: 'ปริญญานิพนธ์',
                                );
                              }));
                        },
                      ),
                    ),
                  ),

                ],

              ),
            ),
          ),
        ),
    );
  }
}
