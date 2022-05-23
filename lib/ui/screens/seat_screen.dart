import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/screens/checkout_screen.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';
import 'package:ticketapp/ui/widgets/seat_item.dart';

class SeatSeatScreen extends StatelessWidget {
  const SeatSeatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlackColor),
        centerTitle: true,
        title: Text(
          'Select Seat',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold
          ),
        ),
        backgroundColor: kWhiteColor,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          // SEAT SEAT
          Container(
            margin: EdgeInsets.only(
              top: 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(
                        right: 10
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icons/icon_available.png'
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Available',
                      style: blackTextStyle.copyWith(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 10
                          ),
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icons/icon_select.png'
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Selected',
                          style: blackTextStyle.copyWith(),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 10
                      ),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icons/icon_unavailable.png'
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Unavailabbe',
                      style: blackTextStyle.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // CHOOSE SEAT
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20
                ),
                width: MediaQuery.of(context).size.width * 0.75,
                margin: EdgeInsets.only(
                  top: 30
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    // SEAT INDICATOR
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: kWhiteColor,
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('A'),
                          ),
                        ),
                        Container(
                          color: kWhiteColor,
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('B'),
                          ),
                        ),
                       Container(
                         color: kWhiteColor,
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text(''),
                          ),
                        ),
                      Container(
                        color: kWhiteColor,
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('C'),
                          ),
                        ),
                        Container(
                          color: kWhiteColor,
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('D'),
                          ),
                        ),
                      ],
                    ),

                    // CHOOSE SEAT 1
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 2,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '1',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 2,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    
                    // CHOOSE SEAT 2
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 2,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '2',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 0,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 3
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 2,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '3',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 0,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 4
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 0,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '4',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 0,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 5
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 1,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '5',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 0,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 6
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 0,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '6',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 1,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 7
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 2,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '7',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 1,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 8
                    Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 1,),
                          SeatItem(status: 2,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '8',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 1,),
                          SeatItem(status: 0,),
                        ],
                      ),
                    ),
                    // CHOOSE SEAT 9
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 30
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SEAT 1
                         SeatItem(status: 1,),
                          SeatItem(status: 0,),
                          // SEAT 1
                          Container(
                            color: kWhiteColor,
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Text(
                                '9',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16
                                ),
                              ),
                            ),
                          ),
                          SeatItem(status: 0,),
                          SeatItem(status: 2,),
                        ],
                      ),
                    ),

                    // Garis Putus Putus
                    DottedLine(),
                    // Container(
                    //   margin: EdgeInsets.only(
                    //     top: 30
                    //   ),
                    //  width: MediaQuery.of(context).size.width * 0.8,
                    //  height: 2,
                    //  decoration: BoxDecoration(
                    //    borderRadius: BorderRadius.circular(10),
                    //    color: kBlackColor
                    //  ),
                    // ),

                    // YOUR SEAT
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Seat',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            'A3, B1',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ), 

                    // TOTAL SEAT ITEM
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            '\$ 1200',
                            style: primaryTextStyle.copyWith(
                               fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // EXECUTIVE
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_arrow_up_outlined),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 30,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/executive.png',
                          ),
                        ),
                      ),
                    ),
                      SizedBox(
                      height: 20,
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            ],
          ),

            // CHECKOUT BUTTON
          CustomBottom(
            margin: EdgeInsets.only(
              top: 40,
              bottom: 20
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            title: "Continue", 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreen()));
            },
          ),
        ],
      ),
    );
  }
}
