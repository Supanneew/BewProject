import 'package:enetb/listvideo.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
//  Field

//  Method

  Widget showIcon(String title, String pathImage, String category) {
    return GestureDetector(
      onTap: () {
        print('category = $category');

        int categoryInt = int.parse(category);

        routeToListVideoAndPdf(category);


      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 80.0,
              child: Image.asset(pathImage),
            ),
            Container(
              alignment: Alignment.center,
              width: 105.0,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        width: 140.0,
        height: 140.0,
      ),
    );
  }

  void routeToListVideoAndPdf(String category) {
    MaterialPageRoute materialPageRoute =
    MaterialPageRoute(builder: (BuildContext buildContext) {
      return ListVideo(
        category: category,
      );
    });
    Navigator.of(context).push(materialPageRoute);
  }

  Widget row1() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showIcon('สื่อมัลติมีเดีย', 'assets/images/job1.png', '0'),
        showIcon('สื่อโปรดักชัน', 'assets/images/job2.png', '1'),
      ],
    );
  }

  Widget row2() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        showIcon(
            'สื่อเทคโนโลยีความเป็นจริงเสมือน', 'assets/images/job3.png', '2'),
        showIcon('โปสเตอร์', 'assets/images/job4.png', '3'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ผลงาน',

          style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),),centerTitle: true,
        ),
      body: Container(
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.all(20.0),
//          color: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              row1(),
              row2(),
            ],
          ),
        ),
      ),
    );
  }
}
