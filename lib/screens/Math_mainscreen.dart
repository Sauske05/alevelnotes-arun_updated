import 'package:flutter/material.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';
import '/models/dummylist.dart';
import './list_item_math.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mathematics',
          textAlign: TextAlign.center,
        ),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: ListView(
        children:
            mathpdf.map((e) => ListItems(num: e.num, title: e.Title)).toList(),
      ),
    );
  }
}
