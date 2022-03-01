import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'portfolio_list_skelton.dart';
import 'portfolio_skelton_title.dart';

class PortfolioPageSkelton extends StatelessWidget {
  const PortfolioPageSkelton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenWidth(5)),
            const PortfolioSkeltonTitle(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const PortfolioSkeltonList(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PortfolioSkeltonTitle(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const PortfolioSkeltonList(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PortfolioSkeltonTitle(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const PortfolioSkeltonList(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
