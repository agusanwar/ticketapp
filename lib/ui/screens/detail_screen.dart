import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/screens/seat_screen.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';
import 'package:ticketapp/ui/widgets/custom_photo_item.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
           Container(
             width: double.infinity,
             height: MediaQuery.of(context).size.width * 1,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/images/image_desc_pangandaran.png'),
                 fit: BoxFit.cover,
               ),
             ),
            ),
            Container(
              height: 214,
              width: double.infinity,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.5,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kWhiteColor.withOpacity(0),
                    kBlackColor.withOpacity(0.95),
                  ]
                )
              ),
            ),
      
            // CONTENT
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: kSecondaryColor,
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_back, color: kBlackColor ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: kSecondaryColor,
                            ),
                            child: Center(
                              child: Icon(Icons.favorite, color: kGreyColor, ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      
            // DESCRIPTION
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.95
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: kWhiteColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    // PHOTOS
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                         CustomPhotoItem(imageUrl: 'assets/images/image_des2.png'),
                         CustomPhotoItem(imageUrl: 'assets/images/image_des11.png'),
                         CustomPhotoItem(imageUrl: 'assets/images/image_des10.png'),
                         CustomPhotoItem(imageUrl: 'assets/images/image_des3.png'),
                        ],
                      ),
                    ),
                    // TITLE
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pasir Putih Beach',
                                style: blackTextStyle.copyWith(
                                    fontSize: 20, fontWeight: semiBold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Pangandaran',
                                style:
                                  greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon_start.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '4.7',
                              style: blackTextStyle.copyWith(fontWeight: medium),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ABOUT
                    Container(
                      margin: EdgeInsets.only(
                        top: 40,
                        bottom: 10
                      ),
                      child: Text(
                        'About',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    Text(
                      'Pantai Pasir Putih Pangandaran merupakan salah satu objek wisata alam cukup terkenal di daerah Pangandaran lebih tepatnya di Pangandaran, Kabupaten Ciamis, Jawa Barat. panorama keindahan pantai yang memiliki pasir berwarna putih,',
                      style: blackTextStyle.copyWith(
                        height: 2
                      ),
                    ),
      
                    // BOOK NOW
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 20
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              //PRICE
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$ 120',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium
                                  ),
                                ),
                                Text(
                                  'Person',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: light
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // BOOK BUTTON NOW
                          CustomBottom(
                            title: 'Book Now',
                            width: 170,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeatSeatScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
