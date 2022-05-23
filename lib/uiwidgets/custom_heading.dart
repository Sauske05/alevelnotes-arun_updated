import 'package:playstore_app/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
          
      children: [
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic
          ),
        ),
        const SizedBox(height: 3.0),
        Text(
          subTitle,
          style: TextStyle(
            color: color,
            fontSize: 16.0,
            fontStyle: FontStyle.italic
          ),
        ),
      ],
    );
  }
}
