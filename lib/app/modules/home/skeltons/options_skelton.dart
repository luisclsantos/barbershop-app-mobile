import 'package:barbershops/app/shared/components/skelton.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class OptionsSkelton extends StatelessWidget {
  const OptionsSkelton({
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
          Expanded(
            child: Skelton(
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenHeight(50),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(14),
          ),
          Expanded(
            child: Skelton(
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenHeight(50),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(14),
          ),
          Expanded(
            child: Skelton(
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenHeight(50),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(14),
          ),
          Expanded(
            child: Skelton(
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenHeight(50),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(14),
          ),
          Expanded(
            child: Skelton(
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenHeight(50),
            ),
          ),
        ],
      ),
    );
  }
}
