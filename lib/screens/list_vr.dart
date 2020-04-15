import 'package:enetb/models/job_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ListVr extends StatefulWidget {
  final JobModel jobModel;

  ListVr({Key key, this.jobModel}) : super(key: key);

  @override
  _ListVrState createState() => _ListVrState();
}

class _ListVrState extends State<ListVr> {
//  Field
  JobModel model;
  PDFDocument pdfDocument;
  bool status = false;

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.jobModel;
    checkStatus();

  }

  Future<void> checkStatus()async{
    int catInt = int.parse(model.category);
    if (catInt == 3) {
      setState(() {
        status = true;
      });
    } else {
      loadPdf();
    }
  }

  Future<void> loadPdf() async {
    try {
      var object = await PDFDocument.fromURL(model.pathVideo);
      setState(() {
        pdfDocument = object;
      });
    } catch (e) {}
  }

  Widget showImage(){
    return Image.network(model.pathImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.name,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,),),
      ),
      body: status ? showImage() : pdfDocument == null
          ? CircularProgressIndicator()
          : PDFViewer(document: pdfDocument),
    );
  }
}
