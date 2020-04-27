import 'package:url_launcher/url_launcher.dart';

class MyLancher {

  Future<void> lancherToWeb(String urlString)async{
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {}
  }

  MyLancher();
}