import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: Text('Payment Page'),
      ),
    );
  }
}