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
             width: MediaQuery.of(context).size.width * 0.8,
             height: 340,
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
          ],
        ),
      ),
    );
  }
}
