import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'loyalty_points_background.dart';
import 'loyalty_points_checked.dart';

class LoyaltyCardSection extends StatelessWidget {
  const LoyaltyCardSection({
    Key? key,
    required this.totalAmountPoints,
    required this.acquiredPoints,
    required this.bonusValue,
  }) : super(key: key);

  final int totalAmountPoints;
  final int acquiredPoints;
  final double bonusValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(350),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(5),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              kLoyaltyCardTitle,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                LoyaltyPointsBackground(totalAmountPoints: totalAmountPoints),
                LoyaltyPointsChecked(acquiredPoints: acquiredPoints),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$kPrefixLoyaltyCardMsgCounting${(totalAmountPoints - acquiredPoints)}$kSuffixLoyaltyCardMsgCounting',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '$kPrefixLoyaltyCardMsgInfo$totalAmountPoints$kMidstLoyaltyCardMsgInfo${bonusValue.toStringAsFixed(2).replaceAll('.', ',')}$kSuffixLoyaltyCardMsgInfo',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
