import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/pages/account_page.dart';
import 'package:ticketapp/ui/pages/favorite_page.dart';
import 'package:ticketapp/ui/pages/home_page.dart';
import 'package:ticketapp/ui/pages/payment_page.dart';

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int _selectedIndex = 0;
   final screens = [
   HomePage(),
   PaymentPage(),
   FavoritePage(),
   AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
          ),
          child: GNav(
            backgroundColor: kWhiteColor,
            activeColor: kPrimaryColor,
            color: kGreyColor,
            gap: 8,
            tabBackgroundColor: kSecondaryColor,
            padding: EdgeInsets.all(15),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.book_online,
                text: 'Payment',
              ),
              GButton(
                icon: Icons.search,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            }
          ),
        ),
      ),
    );
  }
}
