import 'package:enetb/HomeScreen.dart';
import 'package:enetb/detailnews.dart';
import 'package:enetb/screens/show_notification.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:enetb/FirstScreen.dart';
import 'package:enetb/manualpage.dart';

import 'package:enetb/qrpage.dart';

class MainPage extends StatefulWidget {
  final String userId;
  final String type;

  MainPage({Key key, this.userId, this.type}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//  Field
  String userId, type;

  int currentIndex = 0;
  List pages = [
    HomeScreen(),
    ListNews(),
    QrPage(),
    FirstScreen(),
    ManualPage()
  ];
  // FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  //Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    userId = widget.userId;
    type = widget.type;

    if (userId != null){
      pages[0] = HomeScreen(userId: userId, type: type);
    }

    // findToken();
    // receiveNotification();
  }

  // Future<void> findToken() async {
  //   await firebaseMessaging.getToken().then((response) {
  //     print('Token ===>>> ${response.toString()}');
  //   });
  // }

  // Future<void> receiveNotification() async {
  //   firebaseMessaging.configure(
  //     onLaunch: (Map<String, dynamic> map) {
  //       print('onLanch ==> $map');
  //     },
  //     onMessage: (Map<String, dynamic> map) {
  //       print('onMessage ===> $map');
  //       fromOnMessage(map);
  //     },
  //     onResume: (Map<String, dynamic> map) {
  //       print('onResume ===> $map');
  //     },
  //   );
  // }

  Future<void> fromOnMessage(Map<String, dynamic> map) async {
    var result = map['notification'];
    print('result = $result');

    Map<dynamic, dynamic> myMap = result;
    String title = myMap['title'];
    String message = myMap['body'];

    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext buildContext) {
      return ShowNotification(
        title: title,
        message: message,
      );
    });
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar = BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), title: Text('หน้าหลัก')),
          BottomNavigationBarItem(
              icon: Icon(Icons.description), title: Text('ข่าวสาร')),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), title: Text('QR Scan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('เข้าสู่ระบบ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), title: Text('คู่มือการใช้งาน')),
        ]);
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
