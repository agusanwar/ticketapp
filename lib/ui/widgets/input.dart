import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class Input extends StatelessWidget {
  final String name;
  final String icon;
  const Input({Key? key, required this.name, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
              color: kInputField,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  color: kPrimaryColor,
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    style: blackTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: name,
                      hintStyle: greyTextStyle,
                    ),
                    cursorColor: kPrimaryColor,
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
