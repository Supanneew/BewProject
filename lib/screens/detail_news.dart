import 'package:enetb/models/news_model.dart';
import 'package:flutter/cupertino.dart';
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
    print('message ==>>> ${model.message}');
  }

  Widget showName() {
    return Text(
      model.name,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.deepOrange,
      ),
    );
  }

  Widget showImage() {
    return Container(margin: EdgeInsets.only(top: 16.0,bottom: 16.0),
      child: Image.network(model.pathImage),
    );
  }

  Widget showDetail() {
    return Text(model.message);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              showName(),
              showImage(),
              showDetail(),
            ],
          ),
        ),
      ),
    );
  }
}
