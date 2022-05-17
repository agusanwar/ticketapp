import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: Text('Favorite Page'),
      ),
    );
  }
}