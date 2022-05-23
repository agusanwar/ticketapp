import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/widgets/destination_card.dart';
import 'package:ticketapp/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEARDER
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Container(
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
                  ),
                ),

                // DESTINAITON
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       DestinationCard(
                         name: 'Pasir Putih Beach', 
                         imageUrl: 'assets/images/image_desc_pangandaran.png', 
                         city: 'Bali, Indonesia',
                         rating: 4.9,
                        ),
                       DestinationCard(
                         name: 'Malioboro', 
                         imageUrl: 'assets/images/image_desc_jogja.png', 
                         city: 'D.I Yogyakarta, Indonesia',
                         rating: 4.7,
                        ),
                       DestinationCard(
                         name: 'Uluwatu Beach', 
                         imageUrl: 'assets/images/image_desc_bali.png', 
                         city: 'Bali, Indonesia',
                         rating: 4.9,
                        ),
                       DestinationCard(
                         name: 'Rinjani Mountain', 
                         imageUrl: 'assets/images/image_desc_malang.png', 
                         city: 'Malang, Indonesia',
                         rating: 4.8,
                        ),
                       DestinationCard(
                         name: 'Jakarta city', 
                         imageUrl: 'assets/images/image_desc_jakarta.png', 
                         city: 'Jakarta, Indonesia',
                         rating: 4.7,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),

                // TILE DESTINAITON
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Destinations',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold
                        ),
                      ),
                     DestinationTile(
                       imageUrl: "assets/images/image_des2.png",
                       name: "Karapyak Beach", 
                       city: "Bagolo, Jawa Barat",
                       rating: 4.9,
                      ),
                     DestinationTile(
                       imageUrl: "assets/images/image_des11.png",
                       name: "Taman Lauut", 
                       city: "Pangandaran, Jawa Barat",
                       rating: 4.9,
                      ),
                     DestinationTile(
                       imageUrl: "assets/images/image_des3.png",
                       name: "Nusa Penida", 
                       city: "Bali, Bali",
                       rating: 4.9,
                      ),
                     DestinationTile(
                       imageUrl: "assets/images/image_des4.png",
                       name: "Taman Love", 
                       city: "Bandung, Jawa Barat",
                       rating: 4.9,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
