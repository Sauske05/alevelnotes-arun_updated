import 'package:flutter/material.dart';
import 'package:playstore_app/screens/no_internet.dart';
import 'package:playstore_app/uiwidgets/mathsNotes.dart';
import 'package:playstore_app/uiwidgets/physicsNotes.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';

import 'package:provider/provider.dart';
import 'package:playstore_app/theme/theme_provider.dart';

import 'package:playstore_app/theme/padding.dart';

import '../models/connectivity_provider.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  void initState() {
    super.initState();
    Provider.of<ConnectivityProvider>(context, listen: false).startMonitoring();
  }

  @override
  Widget build(BuildContext context) {
    final appbarColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color.fromARGB(255, 62, 61, 61)
            : Colors.blue.shade600;

    return pageUI();
  }

  Widget pageUI() {
    return Consumer<ConnectivityProvider>(builder: ((context, value, child) {
      if (value.isOnline != null) {
        final appbarColor =
            Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
                // ? Color.fromARGB(255, 62, 61, 61)
                ? const Color.fromARGB(255, 62, 61, 61)
                : Colors.blue.shade600;
        final textWhite =
            Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
                // ? Color.fromARGB(255, 62, 61, 61)
                ? const Color.fromARGB(227, 56, 53, 53)
                : const Color(0xFFFFFFFF);

        return value.isOnline!
            ? Scaffold(
                backgroundColor: textWhite,
                extendBodyBehindAppBar: false,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: AppBar(
                    title: const Text('Notes'),
                    actions: [ChangeThemeButtonWidget()],
                    backgroundColor: appbarColor,
                    elevation: 0.0,
                  ),
                ),
                body: getBody(),
              )
            : const NoInternet();
      }

      return Scaffold(
        body: getBody(),
      );
    }));
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
