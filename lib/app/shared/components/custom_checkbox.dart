import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      duration: kAnimationDuration,
      child: SvgPicture.asset(
        isSelected
            ? 'assets/icons/widgets/checkbox.svg'
            : 'assets/icons/widgets/checkbox-unselected.svg',
        color: isSelected ? kPrimaryColor : kPrimaryColor,
        width: getProportionateScreenWidth(18),
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
