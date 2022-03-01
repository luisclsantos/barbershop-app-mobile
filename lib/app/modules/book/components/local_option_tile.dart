import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocalOptionTile extends StatelessWidget {
  const LocalOptionTile({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        kBookIconAssetPathLocalOption,
        color: isSelected ? kPrimaryColor : Colors.white,
      ),
    );
  }
}
