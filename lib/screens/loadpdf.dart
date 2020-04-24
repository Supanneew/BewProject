import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:enetb/models/load_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class LoadPdf extends StatefulWidget {
  final LoadModel loadModel;

  LoadPdf({Key key, this.loadModel}) : super(key: key);

  @override
  _LoadPdfState createState() => _LoadPdfState();
}

class _LoadPdfState extends State<LoadPdf> {
//  Field
  LoadModel loadModel;
  PDFDocument pdfDocument;

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadModel = widget.loadModel;
    downloadFileUsingStreamPipe();
  }

  Future<void> loadPDF() async {
    try {
      var obj = await PDFDocument.fromURL(loadModel.pathFile);

      setState(() {
        pdfDocument = obj;
      });
    } catch (e) {}
  }

//  void downloadFileUsingStreamPipe() {
//    HttpClient client = new HttpClient();
//    client.getUrl(Uri.parse(loadModel.pathFile))
//        .then((HttpClientRequest request) {
//      return request.close();
//    })
//        .then((HttpClientResponse response) {
//      response.pipe(new File('./logo_pipe.png').openWrite());
//    });
//  }


  static var httpClient = new HttpClient();
  Future<File> _downloadFile(String url, String filename) async {
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await (getApplicationDocumentsDirectory)).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loadModel.name,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,),),
      ),
      body: pdfDocument == null
          ? Center(
        child: CircularProgressIndicator(),
      )
          : PDFViewer(document: pdfDocument),
    );
  }
}