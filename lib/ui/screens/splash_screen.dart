import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
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
                    'assets/icons/icon_light.png',
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
