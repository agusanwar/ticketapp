import 'package:flutter/material.dart';
import 'package:ticketapp/shared/themes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/icon_light.png',
                  width: 80,
                  height: 80,
                ),
                Text(
                  'Let`s to sign in',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          inputSection(),
        ],
      ),
    );
  }

  Widget inputSection() {
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

     Widget signInGoogle() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        height: 50,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kGreyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
           
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google.png',
                  height: 20,
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                  child: Text(
                    'Login with Goodle',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }


    return Container(
      margin: EdgeInsets.only(top: 60),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          emailInput(),
          passwordInput(),
          signInButton(),
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'OR',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
            ),
          signInGoogle(),
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
                    text: 'don\'t have an account? ',
                    style: greyTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Register',
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
