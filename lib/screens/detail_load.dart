import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:enetb/models/load_model.dart';
import 'package:enetb/screens/show_load_pdf.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

String fontFam = 'Quark';

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
      appBar: AppBar(
        title: Text(
          'เอกสาร',
          style: TextStyle(
            fontFamily: fontFam,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: loadModels.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: loadModels.length,
              itemBuilder: (value, index) => GestureDetector(
                onTap: () {
                  routeToShowPDF(index, context);
                },
                child: ListTile(
                    trailing: IconButton(
                        icon: Icon(Icons.file_download),
                        onPressed: () {
                          print('url ===>>> ${loadModels[index].pathFile}');
                          lancherToWeb(loadModels[index].pathFile);
                        }),
                    leading: Icon(
                      Icons.book,
                      size: 40.0,
                    ),
                    title: Text(
                      loadModels[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    )),
              ),
            ),
    );
  }

  Future<void> lancherToWeb(String url)async{

    if (await canLaunch(url)) {
      await launch(url);
    } else {

    }

  }

  Future download2(Dio dio, String url, String savePath) async {
    try {
      print('showProcess Work');
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),
      );
      print(response.headers);
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (e) {
      print(e);
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  void routeToShowPDF(int index, BuildContext context) {
    MaterialPageRoute route = MaterialPageRoute(
        builder: (value) => ShowLoadPdf(
              loadModel: loadModels[index],
            ));
    Navigator.of(context).push(route);
  }
}
