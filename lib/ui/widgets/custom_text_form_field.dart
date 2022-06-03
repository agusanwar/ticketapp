import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class CustomTextFormField extends StatelessWidget {
  final String imageUrl;
  final String hintText;
  final bool obsecureText;
  final bool icon;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.imageUrl,
    required this.hintText,
    this.obsecureText = false,
    this.icon = false,
    required this.controller,
  }) : super(key: key);

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
                  imageUrl,
                  color: kPrimaryColor,
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    style: blackTextStyle,
                    obscureText: obsecureText,
                    controller: controller,
                    decoration: InputDecoration.collapsed(
                      hintText: hintText,
                      hintStyle: greyTextStyle,
                    ),
                    cursorColor: kPrimaryColor,
                  ),
                ),
                icon
                    ? Icon(
                        Icons.remove_red_eye,
                        color: kGreyColor,
                        size: 15,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
