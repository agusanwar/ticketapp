import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Justin\njustin ello',
                              style: blackTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: semiBold
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Whe are you today',
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: light
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/image_profile.png'
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
