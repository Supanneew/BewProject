import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enetb/models/load_model.dart';
import 'package:enetb/screens/show_load_pdf.dart';
import 'package:flutter/material.dart';

class DetailLoad extends StatefulWidget {
  final int index;

  DetailLoad({Key key, this.index}) : super(key: key);

  @override
  _DetailLoadState createState() => _DetailLoadState();
}

class _DetailLoadState extends State<DetailLoad> {
//  Field
  int index;
  List<LoadModel> loadModels = List();

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.index;
    readData();
  }

  Future<void> readData() async {
    String url =
        'https://androidthai.in.th/bew/getDownWhereCategory.php?Category=$index';

    Response response = await Dio().get(url);
    print('res ==>>> $response.data');
    var result = json.decode(response.data);

    for (var map in result) {
      LoadModel model = LoadModel.fromJson(map);
      setState(() {
        loadModels.add(model);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: loadModels.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: loadModels.length,
              itemBuilder: (value, index) => GestureDetector(
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (value)=>ShowLoadPdf(loadModel: loadModels[index],));
                  Navigator.of(context).push(route);
                },
                child: ListTile(
                    leading: Icon(Icons.book),
                    title: Text(loadModels[index].name)),
              ),
            ),
    );
  }
}
