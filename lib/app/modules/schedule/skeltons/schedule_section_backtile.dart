import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class ScheduleSectionBackSkelton extends StatelessWidget {
  const ScheduleSectionBackSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(300),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
    );
  }
}
