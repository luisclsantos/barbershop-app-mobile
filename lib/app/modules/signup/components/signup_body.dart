import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'signup_form.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      kSignupTitle,
                      textStyle: headingStyle,
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 80),
                    ),
                  ],
                  pause: const Duration(milliseconds: 2000),
                  repeatForever: true,
                ),
                const Text(
                  kSignupSubtitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignupForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  kSignupAccThermsMsg,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
