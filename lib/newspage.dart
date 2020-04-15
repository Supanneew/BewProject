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
      String url = 'https://androidthai.in.th/bew/getAllNews.php';
      try {
        Response response = await Dio().get(url);
        var result = json.decode(response.data);
        for (var map in result) {
          NewsModel model = NewsModel.fromJson(map);
          newsModels.add(model);
        }
      } catch (e) {}
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
      appBar: AppBar(title: Text(
        'ข่าวสาร',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),


    );
  }
}
