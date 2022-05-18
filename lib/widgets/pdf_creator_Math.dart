import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PDFcreator extends StatefulWidget {
  final String? title;

  const PDFcreator({Key? key, this.title}) : super(key: key);

  @override
  State<PDFcreator> createState() => _PDFcreatorState();
}

class _PDFcreatorState extends State<PDFcreator> {
  String url = "";
  Future<void> downloadURLExample() async {
    try {
      String downloadURL = await firebase_storage.FirebaseStorage.instance
          .ref('Math Content/${widget.title}.pdf')
          .getDownloadURL();
      print(downloadURL);
      url = downloadURL;
      print(url);
      setState(() {});
    } on firebase_storage.FirebaseException catch (e) {
      return showAboutDialog(context: context, children: [
        AlertDialog(
          content: const Text('Something went wrong'),
          actions: [
            TextButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              child: const Text('Okay'),
            )
          ],
        )
      ]);
    }
  }

  Future<File?> downloadFile(String url) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('Math Content/${widget.title}.pdf');
    final response = await Dio().get(url);

    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    return file;
    // ScaffoldMessenger.of(context)
    //     .showSnackBar(SnackBar(content: Text('Downloaded ${ref.name}')));
  }

  @override
  void initState() {
    super.initState();
    downloadURLExample();
    print('ALl DOne');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: url.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : SfPdfViewer.network(url),
    );
  }
}
