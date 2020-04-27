import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';

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


  Future<void> lancherToWeb()async{
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {}
  }

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