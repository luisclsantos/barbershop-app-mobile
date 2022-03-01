import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingContent extends StatelessWidget {
  final String text1, text2, image;

  const OnboardingContent({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          text1,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text2,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
        SvgPicture.asset(
          image,
          fit: BoxFit.cover,
          height: getProportionateScreenHeight(325),
          width: getProportionateScreenWidth(295),
        ),
      ],
    );
  }
}
