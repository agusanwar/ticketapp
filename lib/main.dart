import 'package:flutter/material.dart';
import 'package:ticketapp/ui/screens/splash_screen.dart';
import 'package:ticketapp/ui/screens/started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plane Ticket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 
      home: StartedScreen(),
    );
  }
}

