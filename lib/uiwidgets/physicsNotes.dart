import 'package:playstore_app/datas/physicsNotesUI.dart';
import 'package:playstore_app/datas/promotion.dart';
import 'package:playstore_app/screens/Math_mainscreen.dart';
import 'package:playstore_app/screens/Physics_mainscreen.dart';
import 'package:playstore_app/theme/colors.dart';
import 'package:playstore_app/theme/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/screens/SyllabusScreen.dart';

class PhysicsNotes extends StatelessWidget {
  const PhysicsNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: appPadding, right: appPadding),
      
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size.width,
            height: size.width * .425,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  physicsNotesUI['title'].toString(),
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: textWhite,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 7.0),
                Container(
                  width: size.width * .425,
                  child: Text(
                    physicsNotesUI['subTitle'].toString(),
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: textWhite,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 30.0,
                  width: 100.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primary.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                        color: primary.withOpacity(0.5),
                        spreadRadius: 0.0,
                        blurRadius: 3.0,
                        offset: const Offset(0, 0),
                      )
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhysicsScreen()));
                    },
                    child: const Text(
                      'Open',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: textWhite,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -20.0,
            left: -35.0,
            child: SizedBox(
              height: size.width * .4,
              child: SvgPicture.asset(
                physicsNotesUI['image'].toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
