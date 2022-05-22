import 'package:playstore_app/screens/AboutUs.dart';
import 'package:playstore_app/screens/Physics_mainscreen.dart';
import 'package:playstore_app/screens/SyllabusScreen.dart';
import 'package:playstore_app/screens/terms_and_conditions.dart';

List accountmenujson = [
  {
    'title': '',
    'categories': [
      {
        'title': 'About Us',
        'route':const AboutUs()
        
      },
      {
        'title': 'Help and Support',
        'route':const PhysicsScreen()
        
      },
      {
        'title': 'Terms and Conditions',
        'route':const TermsAndConditions()
        
      },
    ],
  },
];
