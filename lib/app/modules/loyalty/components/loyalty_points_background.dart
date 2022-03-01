import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoyaltyPointsBackground extends StatelessWidget {
  const LoyaltyPointsBackground({
    Key? key,
    required this.totalAmountPoints,
  }) : super(key: key);

  final int totalAmountPoints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(150),
      width: double.infinity,
      child: GridView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(16),
        ),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: getProportionateScreenWidth(10),
          crossAxisSpacing: getProportionateScreenWidth(20),
        ),
        children: [
          ...List.generate(
            //TODO: FIRESTORE
            totalAmountPoints,
            (index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(4),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(4),
                ),
                height: getProportionateScreenWidth(20),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  kLoyaltyIconPointFilledAssetPathName,
                  color: Colors.white,
                  width: 10,
                  height: 10,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
