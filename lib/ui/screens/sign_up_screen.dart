import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketapp/cubit/auth_cubit.dart';
import 'package:ticketapp/shared/themes.dart';
import 'package:ticketapp/ui/widgets/custom_bottom.dart';
import 'package:ticketapp/ui/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

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
          controller: nameController,
          imageUrl: 'assets/icons/icon_person.png',
          hintText: "Fullname");
    }

    //input email address
    Widget emailInput() {
      return CustomTextFormField(
          controller: emailController,
          imageUrl: 'assets/icons/icon_email.png',
          hintText: "Email Id");
    }

    //input password
    Widget passwordInput() {
      return CustomTextFormField(
        controller: passwordController,
        imageUrl: 'assets/icons/icon_password.png',
        obsecureText: true,
        hintText: "Password",
        icon: true,
      );
    }

    //input Hobby
    Widget fessionInput() {
      return CustomTextFormField(
          controller: hobbyController,
          imageUrl: "assets/icons/icon_hobby.png",
          hintText: "Fassion / Hobby");
    }

    Widget signInButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main-pages', (route) => false);
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kRedColor,
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return CustomBottom(
              margin: EdgeInsets.only(top: 40),
              title: "Sign Up",
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    hobby: hobbyController.text);
              });
        },
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
