import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

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
                    'assets/icons/icon_person.png',
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
                        hintText: 'Fullname',
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

        //input email address
    Widget emailInput() {
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
                    'assets/icons/icon_email.png',
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
                        hintText: 'Email ID',
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

    //input password
    Widget passwordInput() {
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
                    'assets/icons/icon_password.png',
                    color: kPrimaryColor,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: blackTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Password',
                        hintStyle: greyTextStyle,
                      ),
                      cursorColor: kPrimaryColor,
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: kGreyColor,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

        //input email address
    Widget fessionInput() {
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
                    'assets/icons/icon_hobby.png',
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
                        hintText: 'Fession / Hobby',
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

    Widget signInButton(){
       return Container(
        margin: EdgeInsets.only(
          top: 60,
        ),
        height: 50,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
           
          },
          child: 
              // CircularProgressIndicator(
              //     color: kWhiteColor,
              //     backgroundColor: kBlackColor,
              //   )
          Text(
            'Sign In',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
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
            margin: EdgeInsets.only(
              top: 20
            ),
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
                  onTap: (){
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  child: Text.rich(
                    TextSpan(
                      text: ' Register',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
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
