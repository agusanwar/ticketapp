import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class BookingDetailItemRight extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailItemRight({
    Key? key,
    required this.title,
    required this.valueText,
    required this.valueColor,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
               fontWeight: medium,
               ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontSize: 20,
               fontWeight: semiBold,
               color: valueColor),
          ),
        ],
      ),
    );
  }
}
