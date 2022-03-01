import 'package:barbershops/app/shared/components/skelton.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class PopularProductCardSkelton extends StatelessWidget {
  const PopularProductCardSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(140),
            height: getProportionateScreenWidth(150),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.04),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(6)),
          Skelton(
            height: getProportionateScreenWidth(15),
            width: getProportionateScreenWidth(120),
          ),
          SizedBox(height: getProportionateScreenWidth(4)),
          SizedBox(
            width: getProportionateScreenWidth(140),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Skelton(
                    height: getProportionateScreenWidth(20),
                    width: getProportionateScreenWidth(90),
                  ),
                ),
                const Spacer(flex: 1),
                Expanded(
                  flex: 1,
                  child: Skelton(
                    height: getProportionateScreenWidth(30),
                    width: getProportionateScreenWidth(30),
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
