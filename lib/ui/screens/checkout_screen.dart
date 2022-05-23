import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/screens/success_screen.dart';
import 'package:ticketapp/ui/widgets/booking_detail_item_left.dart';
import 'package:ticketapp/ui/widgets/booking_detail_item_right.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kWhiteColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kBlackColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Checkout',
          style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            children: [
              // BOOKING
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kWhiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15, bottom: 20),
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/image_des2.png'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MOnas',
                                    style: blackTextStyle.copyWith(
                                        fontSize: 20, fontWeight: semiBold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Jakarta',
                                    style: greyTextStyle.copyWith(
                                        fontSize: 16, fontWeight: medium),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  '2.4',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: medium),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Garis Putus Putus
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // WIDGET SETENGAH LINGKARAN
                          Container(
                            width: 20,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: kSecondaryColor),
                          ),
                          DottedLine(
                              dashColor: kGreyColor,
                              lineLength:
                                  MediaQuery.of(context).size.width * 0.77),
                          Container(
                            width: 20,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: kSecondaryColor),
                          ),
                        ],
                      ),

                      // BOOKING
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20, top: 20),
                              child: Text(
                                'Booking Details',
                                style: blackTextStyle.copyWith(
                                    fontSize: 20, fontWeight: semiBold),
                              ),
                            ),

                            // BOOKING ITEM
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      BookingDetailItemLeft(
                                          title: 'Travelers',
                                          valueText: '2 Person',
                                          valueColor: kBlackColor),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      BookingDetailItemLeft(
                                        title: 'Insurance',
                                        valueText: 'Yes',
                                        valueColor: kGreeenColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      BookingDetailItemLeft(
                                          title: 'VAT',
                                          valueText: '10 %',
                                          valueColor: kBlackColor),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BookingDetailItemRight(
                                          title: 'Seats',
                                          valueText: 'A1, B3',
                                          valueColor: kBlackColor),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      BookingDetailItemRight(
                                          title: 'Refundable',
                                          valueText: 'Yes',
                                          valueColor: kRedColor),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      BookingDetailItemRight(
                                          title: 'Price',
                                          valueText: 'IDR. 1.000.000',
                                          valueColor: kBlackColor),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Garis Putus Putus
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // WIDGET SETENGAH LINGKARAN
                          Container(
                            width: 20,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: kSecondaryColor),
                          ),
                          DottedLine(
                              dashColor: kGreyColor,
                              lineLength:
                                  MediaQuery.of(context).size.width * 0.77),
                          Container(
                            width: 20,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: kSecondaryColor),
                          ),
                        ],
                      ),

                      // Grand Total
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              BookingDetailItemRight(
                                  title: 'Grand Total',
                                  valueText: 'IDR. 2.200.000',
                                  valueColor: kPrimaryColor),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // PAYMENT DETAILS
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Payment Details',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: semiBold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            'Payment Balance',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          ),
                        ),
                        Text(
                          'IDR 2.200.000',
                          style: primaryTextStyle.copyWith(
                              fontSize: 20, fontWeight: semiBold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 10),
                      child: CustomBottom(
                          width: double.infinity,
                          title: 'Pay Now',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SuccessScreen()));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
