import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticketapp/ui/screens/sign_in.dart';
import 'package:ticketapp/ui/screens/sign_up_screen.dart';
import 'package:ticketapp/ui/screens/splash_screen.dart';
import 'package:ticketapp/ui/screens/started_screen.dart';

void main() {
 // Set Devisce Portrait Orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
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
     routes: {
        '/': (context) => SplashScreen(),
        '/started': (context) => StartedScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/sign-in': (context) => SignInScreen(),
     },
    );
  }
}

