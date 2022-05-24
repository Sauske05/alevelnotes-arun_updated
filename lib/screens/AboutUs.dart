import 'package:flutter/material.dart';

import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';

import 'package:provider/provider.dart';
import 'package:playstore_app/theme/theme_provider.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  AboutUsState createState() => AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: textWhite,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text('About Us'),
          actions: [ChangeThemeButtonWidget()],
          backgroundColor: appbarColor,
          elevation: 0.0,
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    // var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(18, 100, 20, 20),
        child: Column(children: [
          Text(
            'Shishir \n"Hi, I\'m Shishir. I am frontend developer for this app. I like building things. I am a High school graduate, Covid Connect Nepal Alumni, and the founder of <my_company/>. I am currently working with OlympEd, MathWorldNepal, and Engin."',
            style: TextStyle(
                fontSize: 18,
                backgroundColor: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        // ? Color.fromARGB(255, 62, 61, 61)
                        ? const Color.fromARGB(227, 83, 83, 83)
                        : Color.fromARGB(255, 229, 229, 229),
                letterSpacing: 0.9),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
              height: 50,
            ),
          Text(
            'Arun \n"Hi, I am Arun. I am Backend Developer for this app. Having recently graduated from Trinity Intl College, I am currently doing my internship at Robotics Association of Nepal(RAN). I excel at App development and Web development. I am also currently involved with Math World Nepal and Squad of Physics, Math, and Astronomy(SPAM)."',
            style: TextStyle(
                fontSize: 18,
                backgroundColor: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        // ? Color.fromARGB(255, 62, 61, 61)
                        ? const Color.fromARGB(227, 83, 83, 83)
                        : Color.fromARGB(255, 229, 229, 229),
                letterSpacing: 0.9),
            textAlign: TextAlign.justify,
          )
        ]));
  }
}
