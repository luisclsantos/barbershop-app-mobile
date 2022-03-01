import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/themes/app_theme.dart';
import '../../../shared/utils/size_config.dart';

class HourOptionTileCrossOutText extends StatelessWidget {
  const HourOptionTileCrossOutText({
    Key? key,
    required this.isSelected,
    required this.hour,
  }) : super(key: key);

  final bool isSelected;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: Text(
        hour,
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
          fontSize: getProportionateScreenWidth(14),
          height: 1.5,
          color: Colors.red.withOpacity(0.9),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
