import 'package:barbershops/app/shared/components/skelton.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class HeaderSkelton extends StatelessWidget {
  const HeaderSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Skelton(
            height: getProportionateScreenHeight(64),
            width: getProportionateScreenHeight(246),
          ),
          Skelton(
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenHeight(50),
          ),
          Skelton(
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenHeight(50),
          ),
        ],
      ),
    );
  }
}
