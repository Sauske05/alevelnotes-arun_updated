import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:playstore_app/models/connectivity_provider.dart';
import 'package:provider/provider.dart';
import './screens/readerscreen.dart';
import './screens/Homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:playstore_app/theme/theme_provider.dart';
import 'package:playstore_app/root_app.dart';
import './screens/reader_screen_math.dart';
// import 'package:rate_my_app/rate_my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '</appname>',
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          routes: {
            '/reader_screen': (context) => ReaderScreen(),
            'reader_screen_math': (context) => ReaderScreenMath(),
          },
          // home: const MyHomePage(),
          //

          home: AnimatedSplashScreen(
            splash: SingleChildScrollView(
              child: Column(
                children: [
                  Lottie.asset("assets/images/rocket_animation.json"),
                  const SizedBox(height: 30),
                  const Text(
                    '''Developed By Arun Joshi
               and Shishir Poudel''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 231, 132, 20)),
                  )
                ],
              ),
            ),
            duration: 4300,
            splashIconSize: 500,
            nextScreen: ChangeNotifierProvider(
                create: (context) => ConnectivityProvider(), child: RootApp()),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.leftToRight,
          ),
          // home: RootApp(),
        );
      });
}
