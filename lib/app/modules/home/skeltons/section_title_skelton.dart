import 'package:barbershops/app/shared/components/skelton.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class SectionTitleSkelton extends StatelessWidget {
  const SectionTitleSkelton({
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
            flex: 3,
            child: Skelton(
              height: getProportionateScreenWidth(20),
              width: getProportionateScreenWidth(30),
            ),
          ),
          const Spacer(flex: 2),
          const Spacer(flex: 1),
          Expanded(
            flex: 1,
            child: Skelton(
              height: getProportionateScreenWidth(20),
              width: getProportionateScreenWidth(30),
            ),
          ),
        ],
      ),
    );
  }
}
