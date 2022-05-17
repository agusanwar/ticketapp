import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/ticket.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Plane Ticket App',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold, letterSpacing: 5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore a new city with us\nyou will find comfort in it',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16,
                      ),
                      primary: kPrimaryColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get Started',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        Icon(Icons.arrow_circle_right_outlined),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
