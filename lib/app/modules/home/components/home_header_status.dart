import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeaderStatus extends StatelessWidget {
  const HomeHeaderStatus({Key? key, required this.status}) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(20),
      ),
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: getProportionateScreenWidth(16),
        child: AnimatedTextKitBarberShopStatus(status: status),
      ),
    );
  }
}

class AnimatedTextKitBarberShopStatus extends StatelessWidget {
  const AnimatedTextKitBarberShopStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText(
          status == 'open' ? kHomeStatusOpenMsg : kHomeStatusCloseMsg,
          textStyle: shopStatusStyle,
          textAlign: TextAlign.center,
        ),
      ],
      pause: const Duration(milliseconds: 100),
      repeatForever: true,
    );
  }
}
