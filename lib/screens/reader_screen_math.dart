import 'package:flutter/material.dart';
import '/widgets/pdf_creator_Math.dart';
import '../widgets/DownloadDialog_Math.dart';

class ReaderScreenMath extends StatefulWidget {
  // final String title;
  // ReaderScreen(this.title, {Key? key}) : super(key: key);

  @override
  State<ReaderScreenMath> createState() => _ReaderScreenMathState();
}

class _ReaderScreenMathState extends State<ReaderScreenMath> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String?>;

    final title = routeArgs['title'];

    return Scaffold(
        appBar: AppBar(title: Text(title!), actions: [
          IconButton(
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) => DownloadDialog(title));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('File succesfully added to downloads!'),
                duration: Duration(seconds: 4),
              ));
            },
            icon: const Icon(Icons.download),
          ),
        ]),
        body: PDFcreator(
          title: title,
        ));
  }
}
