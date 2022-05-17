import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}