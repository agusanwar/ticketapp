import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class DestinationTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.city,
    this.rating = 0.0,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        top: 20,

      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                 imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 name,
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style:
                    greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 5,
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
                      rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kSecondaryColor,
            ),
            child: Center(
              child: Icon(Icons.favorite, color: kRedColor),
            ),
          ),
        ],
      ),
    );
  }
}
