import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../signin_store.dart';
import 'no_account_widget.dart';
import 'signin_form.dart';

class SigninBody extends StatefulWidget {
  const SigninBody({Key? key}) : super(key: key);

  @override
  _SigninBodyState createState() => _SigninBodyState();
}

class _SigninBodyState extends ModularState<SigninBody, SigninStore> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      kSigninTitle,
                      textStyle: headingStyle,
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 80),
                    ),
                  ],
                  pause: const Duration(milliseconds: 2000),
                  repeatForever: true,
                ),
                const Text(
                  kSigninSubtitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SigninForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountWidget(),
                SizedBox(height: getProportionateScreenHeight(30)),
                buildForgotPassSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildForgotPassSection() {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () {
            Modular.to.navigate('forgotpass');
          },
          child: const Text(
            'Esqueci minha senha',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
