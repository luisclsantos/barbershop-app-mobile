import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class PortfolioSkelton extends StatelessWidget {
  const PortfolioSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: SizedBox(
              width: getProportionateScreenWidth(242),
              height: getProportionateScreenWidth(100),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.04),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: SizedBox(
              width: getProportionateScreenWidth(242),
              height: getProportionateScreenWidth(100),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.04),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
