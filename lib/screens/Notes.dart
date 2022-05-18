import 'package:flutter/material.dart';
import 'package:playstore_app/uiwidgets/mathsNotes.dart';
import 'package:playstore_app/uiwidgets/physicsNotes.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';

import 'package:provider/provider.dart';
import 'package:playstore_app/theme/theme_provider.dart';

import 'package:playstore_app/theme/padding.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    final appbarColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            // ? Color.fromARGB(255, 62, 61, 61)
            ? const Color.fromARGB(255, 62, 61, 61)
            : Colors.blue.shade600;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text('Notes'),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: spacer),
        child: Column(
          children: const [
            SizedBox(
              height: spacer - 15,
            ),
            MathsNotes(),
            SizedBox(
              height: spacer,
            ),
            PhysicsNotes(),
          ],
        ));
  }
}
