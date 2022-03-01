import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/models/portfolio_model.dart';
import '../../../shared/utils/size_config.dart';

class CutsDescriptionSection extends StatelessWidget {
  const CutsDescriptionSection({
    Key? key,
    required this.cut,
  }) : super(key: key);

  final PortfolioModel cut;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
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
          Text(
            kCutsDescriptionTitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          SizedBox(
            width: SizeConfig.screenWidth - getProportionateScreenWidth(42),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    cut.description.toString(),
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                    textScaleFactor: 0.9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            kCutsDescription2Title,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(5)),
          SizedBox(
            width: SizeConfig.screenWidth - getProportionateScreenWidth(42),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    cut.description2.toString(),
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                    textScaleFactor: 0.9,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
