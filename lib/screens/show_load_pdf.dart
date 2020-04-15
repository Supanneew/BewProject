import 'package:enetb/models/load_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ShowLoadPdf extends StatefulWidget {
  final LoadModel loadModel;

  ShowLoadPdf({Key key, this.loadModel}) : super(key: key);

  @override
  _ShowLoadPdfState createState() => _ShowLoadPdfState();
}

class _ShowLoadPdfState extends State<ShowLoadPdf> {
//  Field
  LoadModel loadModel;
  PDFDocument pdfDocument;

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadModel = widget.loadModel;
    loadPDF();
  }

  Future<void> loadPDF() async {
    try {
      var obj = await PDFDocument.fromURL(loadModel.pathFile);

      setState(() {
        pdfDocument = obj;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pdfDocument == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(document: pdfDocument),
    );
  }
}
