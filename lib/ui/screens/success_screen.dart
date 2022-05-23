import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ticketapp/shared/themes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        children: [
          Container(
             width: 350,
             height: 350,
             child: Lottie.asset('assets/lottie/payment_success.json'),
           ),
        ],
      ),
    );
  }
}
