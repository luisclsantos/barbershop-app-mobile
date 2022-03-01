import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'components/forgot_pass_form.dart';

class ForgotpassPage extends StatefulWidget {
  final String title;
  const ForgotpassPage({Key? key, this.title = 'ForgotpassPage'})
      : super(key: key);
  @override
  ForgotpassPageState createState() => ForgotpassPageState();
}

class ForgotpassPageState extends State<ForgotpassPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      kForgotPassTitle,
                      textStyle: headingStyle,
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 80),
                    ),
                  ],
                  pause: const Duration(milliseconds: 2000),
                  repeatForever: true,
                ),
                const Text(
                  kForgotPassSubtitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                const ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
