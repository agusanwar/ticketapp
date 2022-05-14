import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Container(
             width: 240,
             height: 240,
             margin: const EdgeInsets.only(
               bottom: 40,
             ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/icon.png',
                ),
              ),
            ),
           ),
           Text(
             "Plane Ticket",
            style: whiteTextStyle.copyWith(
              fontSize: 32, 
              fontWeight: medium, 
              letterSpacing: 10
            ),
           ),
          ],
        ),
      ),
    );
  }
}
