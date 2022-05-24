import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 350,
              height: 350,
              child: Lottie.asset('assets/lottie/payment_success.json'),
            ),
            Text(
              'Payment Success',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Thanks for taking the trip, \nand getting ready to come back with something even more exciting',
              style: greyTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            CustomBottom(
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width * 0.5,
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-pages', (route) => false);
              }
            ),
          ],
        ),
      ),
    );
  }
}
