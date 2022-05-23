import 'package:flutter/material.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';
import '/models/dummylist.dart';
import '/widgets/list_items.dart';
import 'package:provider/provider.dart';
import 'package:playstore_app/models/connectivity_provider.dart';

class PhysicsScreen extends StatefulWidget {
  const PhysicsScreen({Key? key}) : super(key: key);

  @override
  State<PhysicsScreen> createState() => _PhysicsScreenState();
}

class _PhysicsScreenState extends State<PhysicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Physics',
          textAlign: TextAlign.center,
        ),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: ListView(
        children: physicspdf
            .map((e) => ListItems(num: e.num, title: e.Title))
            .toList(),
      ),
    );
  }
}
