import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(10),
      ),
      child: TextButton(
        style: textButtonStyle,
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            SizedBox(width: getProportionateScreenHeight(20)),
            Expanded(
              child: Text(
                text,
                style: tileTitleTextStyle,
              ),
            ),
            SvgPicture.asset(
              kProfileAssetIconRightArrow,
              color: kPrimaryColor,
              width: 22,
            ),
          ],
        ),
      ),
    );
  }
}
