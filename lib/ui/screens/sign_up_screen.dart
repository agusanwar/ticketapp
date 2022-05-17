import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';
import 'package:ticketapp/ui/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 35,
                      color: kBlackColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Craete Account\nto Join app',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            inputSection(),
          ],
        ),
      ),
    );
  }

  Widget inputSection() {
    //input Fullname
    Widget fullnameINput() {
      return CustomTextFormField(
          imageUrl: 'assets/icons/icon_person.png', hintText: "Fullname");
    }

    //input email address
    Widget emailInput() {
      return CustomTextFormField(
          imageUrl: 'assets/icons/icon_email.png', hintText: "Email Id");
    }

    //input password
    Widget passwordInput() {
      return CustomTextFormField(
        imageUrl: 'assets/icons/icon_password.png',
        obsecureText: true,
        hintText: "Password",
        icon: true,
      );
    }

    //input Hobby
    Widget fessionInput() {
      return CustomTextFormField(
        imageUrl: "assets/icons/icon_hobby.png", 
        hintText: "Fassion / Hobby"
      );
    }

    Widget signInButton() {
      return CustomBottom(
          margin: EdgeInsets.only(top: 40),
          title: "Sign Up",
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          });
    }

    return Container(
      margin: EdgeInsets.only(top: 80),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          fullnameINput(),
          emailInput(),
          passwordInput(),
          fessionInput(),
          signInButton(),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text.rich(
                  TextSpan(
                    text: 'don\'t have an account ? ',
                    style: greyTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  child: Text.rich(
                    TextSpan(
                      text: ' Register',
                      style: blackTextStyle.copyWith(fontWeight: semiBold),
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
