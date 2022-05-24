import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketapp/cubit/page_cubit.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/pages/account_page.dart';
import 'package:ticketapp/ui/pages/favorite_page.dart';
import 'package:ticketapp/ui/pages/home_page.dart';
import 'package:ticketapp/ui/pages/payment_page.dart';
import 'package:ticketapp/ui/widgets/custom_bottom_nav.dart';

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return PaymentPage();
        case 2:
          return FavoritePage();
        case 3:
          return AccountPage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kSecondaryColor,
          // body: screens[_selectedIndex],
         body: Stack(
           children: [
             buildContent(currentIndex),
             Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 width: double.infinity,
                 height: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(30),
                     topRight: Radius.circular(30),
                   ),
                   color: kWhiteColor
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    CustomBottomNav(index: 0, imageUrl: 'assets/icons/icon_home.png', title: 'Home'),
                    CustomBottomNav(index: 1, imageUrl: 'assets/icons/icon_book.png', title: 'Book'),
                    CustomBottomNav(index: 2, imageUrl: 'assets/icons/icon_payment.png', title: 'Payment'),
                    CustomBottomNav(index: 3, imageUrl: 'assets/icons/icon_account.png', title: 'Account'),
                   ],
                 ),
               ),
             ),
           ],
         ),
        );
      },
    );
  }
}
