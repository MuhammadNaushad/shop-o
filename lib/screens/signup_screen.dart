import 'package:flutter/material.dart';
import 'package:shop_o/Helpers/big_text.dart';
import 'package:shop_o/Helpers/default_button.dart';
import 'package:shop_o/Helpers/default_text_fields.dart';
import 'package:shop_o/Helpers/medium_text.dart';
import 'package:shop_o/Helpers/small_text.dart';
import 'package:shop_o/Helpers/social_buttons.dart';
import 'package:shop_o/app_constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    BigText(
                        text: 'Create Account',
                        textColor: AppConstants.defaultText,
                        fontWeight: FontWeight.w800,
                        textDecoration: TextDecoration.none),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    MediumText(
                        text: 'Sign In',
                        textColor: AppConstants.secondaryColor,
                        textDecoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                    const SizedBox(width: 10),
                    Container(
                      height: 19,
                      width: 2,
                      color: AppConstants.sperateColor,
                    ),
                    const SizedBox(width: 10),
                    MediumText(
                        text: 'Sign Up',
                        textColor: AppConstants.defaultText,
                        textDecoration: TextDecoration.none,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                const SizedBox(height: 20),
                DefaultTextField(
                    fillColor: AppConstants.abColor,
                    labelText: 'Username',
                    textInputType: TextInputType.name,
                    obscureText: false),
                const SizedBox(height: 20),
                DefaultTextField(
                    fillColor: AppConstants.abColor,
                    labelText: 'Email',
                    textInputType: TextInputType.name,
                    obscureText: false),
                const SizedBox(height: 20),
                DefaultTextField(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    ),
                    fillColor: AppConstants.abColor,
                    labelText: 'Password',
                    textInputType: TextInputType.name,
                    obscureText: true),
                const SizedBox(height: 20),
                DefaultTextField(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    ),
                    fillColor: AppConstants.abColor,
                    labelText: 'Confirm Password',
                    textInputType: TextInputType.name,
                    obscureText: true),
                Row(
                  children: [
                    Checkbox(
                        activeColor: AppConstants.primaryColor,
                        checkColor: AppConstants.defaultText,
                        //fillColor: AppConstants.primaryColor,
                        value: true,
                        onChanged: (value) {}),
                    SmalllText(
                      text: 'Remember me',
                      textColor: AppConstants.defaultText,
                      textDecoration: TextDecoration.none,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const DefaultButton(text: 'Sign Up'),
                const SizedBox(height: 20),
                SmalllText(
                  text: 'Sign In with social',
                  textColor: AppConstants.defaultText,
                  textDecoration: TextDecoration.none,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialButtons(
                      image: 'assets/images/google.png',
                    ),
                    SizedBox(width: 20),
                    SocialButtons(
                      image: 'assets/images/facebook.png',
                    ),
                    SizedBox(width: 20),
                    SocialButtons(
                      image: 'assets/images/Linked it.png',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                MediumText(
                    text: 'Continue as Guest',
                    textColor: AppConstants.greenColor,
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
