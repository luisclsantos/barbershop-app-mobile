import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';

class CustomBottomBarIconButton extends StatelessWidget {
  const CustomBottomBarIconButton({
    Key? key,
    required this.press,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final Function press;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
          vertical: getProportionateScreenWidth(8),
        ),
        child: SvgPicture.asset(
          icon,
          color: color,
          height: getProportionateScreenWidth(26),
          width: getProportionateScreenWidth(26),
        ),
      ),
      onTap: () {
        press();
      },
    );
  }
}
