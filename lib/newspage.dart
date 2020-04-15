import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enetb/screens/detail_news.dart';
import 'package:flutter/material.dart';

import 'models/news_model.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsModel> newsModels = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllNews();
  }

  Future<void> readAllNews() async {
    print('work');
    String url = 'https://androidthai.in.th/bew/getAllNews.php';
    try {
      Response response = await Dio().get(url);
      print('response = $response');
      var result = json.decode(response.data);
      print('result ===>>> $result');
      for (var map in result) {
        NewsModel model = NewsModel.fromJson(map);
        setState(() {
          newsModels.add(model);
        });
      }
    } catch (e) {
      print('e ==>> ${e.toString()}');
    }
  }

  void moveToDetail(int index) {
    MaterialPageRoute route = MaterialPageRoute(
        builder: (value) => DetailNews(
              newsModel: newsModels[index],
            ));
    Navigator.of(context).push(route);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: newsModels.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : showListView(),
      appBar: AppBar(
        title: Text(
          'ข่าวสาร',
          style: TextStyle(
            fontFamily: fontFam,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  ListView showListView() {
    return ListView.builder(
      itemCount: newsModels.length,
      itemBuilder: (value, index) => GestureDetector(onTap: (){
        MaterialPageRoute route = MaterialPageRoute(builder: (value)=>DetailNews(newsModel: newsModels[index],));
        Navigator.of(context).push(route);
      },
        child: Row(
          children: <Widget>[
            Container(padding: EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.4,
              child: Image.network(
                newsModels[index].pathImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(newsModels[index].name),
            ),
          ],
        ),
      ),
    );
  }
}
