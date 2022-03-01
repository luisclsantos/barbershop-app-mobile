import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class HourOptionTile extends StatelessWidget {
  const HourOptionTile({
    Key? key,
    required this.isSelected,
    required this.hour,
  }) : super(key: key);

  final bool isSelected;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? kPrimaryColor : Colors.black.withOpacity(0.04),
      ),
      child: Text(
        hour,
        style: isSelected ? hourSelectedTextStyle : hourTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
