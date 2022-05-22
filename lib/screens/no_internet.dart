import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        
        Container(
            height: 150,
            width: 150,
            margin: const EdgeInsets.fromLTRB(0, 90, 0, 25),
            child: 
                       SvgPicture.asset(
                        "assets/images/wifi-svgrepo-com.svg",
                        
                        color: Colors.black54,
                      ),   
            ),
        const Text(
          "No internet connection",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
        const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "You are not connected to the internet. Make Sure Wi-Fi is on.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ))
      ]),
    );
  }
}
