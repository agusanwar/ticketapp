import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketapp/cubit/page_cubit.dart';
import 'package:ticketapp/ui/pages/main_pages.dart';
import 'package:ticketapp/ui/screens/checkout_screen.dart';
import 'package:ticketapp/ui/screens/seat_screen.dart';
import 'package:ticketapp/ui/screens/sign_in_screen.dart';
import 'package:ticketapp/ui/screens/sign_up_screen.dart';
import 'package:ticketapp/ui/screens/splash_screen.dart';
import 'package:ticketapp/ui/screens/started_screen.dart';
import 'package:ticketapp/ui/screens/success_screen.dart';

Future<void> main() async {
 // Set Devisce Portrait Orientation
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit())
      ],
      child: MaterialApp(
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
          '/main-pages': (context) => MainPages(),
          '/seat-seat': (context) => SeatSeatScreen(),
          '/checkout': (context) => CheckoutScreen(),
          '/success-checkout': (context) => SuccessScreen(),
       },
      ),
    );
  }
}

