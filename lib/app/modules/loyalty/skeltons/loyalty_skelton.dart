import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'loyalty_section_skelton.dart';
import 'loyalty_skelton_title.dart';

class LoyaltyPageSkelton extends StatefulWidget {
  const LoyaltyPageSkelton({Key? key}) : super(key: key);

  @override
  _LoyaltyPageSkeltonState createState() => _LoyaltyPageSkeltonState();
}

class _LoyaltyPageSkeltonState extends State<LoyaltyPageSkelton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              const LoyaltySkeltonTitle(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const LoyaltySectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const LoyaltySkeltonTitle(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const LoyaltySectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
          baseColor: Colors.black,
          highlightColor: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
