import 'package:enetb/models/news_model.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  final NewsModel newsModel;

  DetailNews({Key key, this.newsModel}) : super(key: key);

  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  NewsModel model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.newsModel;
  }

  Widget showName() {
    Text(model.name,
    style: TextStyle(
    fontSize:20.0,
    fontWeight: FontWeight.bold,
    ),
    );
  }

  Widget showImage(){
    NetworkImage(model.pathImage);
  }

  Widget showDetail(){
    Text(model.message);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            showName(),
            showImage(),
            showDetail(),
          ],
        ),
      ),

    );
  }
}
