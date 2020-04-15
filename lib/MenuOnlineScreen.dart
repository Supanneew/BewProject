import 'package:flutter/material.dart';
import 'package:enetb/RegisterTeacher.dart';
import 'package:enetb/LoginScreen.dart';
import 'package:enetb/RegisterStudent.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

const PrimaryColor = const Color(0xFFFF6B00);
      String fontFam = 'Quark';


class MenuOnlineScreenStudent extends StatelessWidget {

  String urlRegis = "http://klogic.kmutnb.ac.th:8080/kris/index.jsp";
  String urlTeach = "https://grade.icit.kmutnb.ac.th/";
  String urlGrade = "https://grade.icit.kmutnb.ac.th/";
  String urlStat = "http://ureport.kmutnb.ac.th/";
  String urlResearch = "http://researchdb.kmutnb.ac.th/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('เมนูออนไลน์สำหรับนักศึกษา',
          style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),),centerTitle: true, backgroundColor: PrimaryColor,),
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
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
                      child: Text('ลงทะเบียน',
                        style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                          fontSize: 18,),),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute<Null>(builder: (BuildContext context) {
                              return new WebViewScreen(
                                urlString: urlRegis,
                                titleString: 'ลงทะเบียน',
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
                      child: Text('ประเมินการสอน',
                        style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                          fontSize: 18,),),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute<Null>(builder: (BuildContext context) {
                              return new WebViewScreen(
                                urlString: urlTeach,
                                titleString: 'ประเมินการสอน',
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


class MenuOnlineScreenTeacher extends StatelessWidget {

  String urlRegis = "http://klogic.kmutnb.ac.th:8080/kris/index.jsp";
  String urlTeach = "https://grade.icit.kmutnb.ac.th/";
  String urlGrade = "https://grade.icit.kmutnb.ac.th/";
  String urlStat = "http://ureport.kmutnb.ac.th/";
  String urlResearch = "http://researchdb.kmutnb.ac.th/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('เมนูออนไลน์สำหรับบุคลากร',
          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
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
                        child: Text('ลงทะเบียน',
                          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                            fontSize: 18,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlRegis,
                                  titleString: 'ลงทะเบียน',
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
                        child: Text('ประเมินการสอน',
                          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                            fontSize: 18,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlTeach,
                                  titleString: 'ประเมินการสอน',
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
                        child: Text('ส่งเกรด',
                          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                            fontSize: 18,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlGrade,
                                  titleString: 'ส่งเกรด',
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
                        child: Text('สถิตินักศึกษา',
                          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                            fontSize: 18,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlStat,
                                  titleString: 'สถิตินักศึกษา',
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
                        child: Text('ฐานข้อมูลวิจัย',
                          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
                          fontSize: 18,),),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return new WebViewScreen(
                                  urlString: urlResearch,
                                  titleString: 'ฐานข้อมูลวิจัย',
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
      ),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  WebViewScreen({
    @required this.urlString, this.titleString,

  });

  final String urlString, titleString;
  @override
  WebviewScreentState createState() => new WebviewScreentState(urlString, titleString);

}

class WebviewScreentState extends State<WebViewScreen> {

  WebviewScreentState(this.urlString, this.titleString);  //constructor
  final String urlString;
  final String titleString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(titleString,
            style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
              fontSize: 25,),),
          centerTitle: true, backgroundColor: PrimaryColor
      ),
      body: WebView(
        initialUrl: urlString,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

}