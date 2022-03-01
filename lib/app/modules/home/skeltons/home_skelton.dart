import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'banner_skelton.dart';
import 'header_skelton.dart';
import 'options_skelton.dart';
import 'popular_products_skelton.dart';
import 'portfolio_skelton.dart';
import 'section_title_skelton.dart';

class HomePageSkelton extends StatelessWidget {
  const HomePageSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const HeaderSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const BannerSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const OptionsSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const SectionTitleSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const PortfolioSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const SectionTitleSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
              const PopularProductsSkelton(),
              SizedBox(height: getProportionateScreenWidth(8)),
            ],
          ),
          baseColor: Colors.black,
          highlightColor: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
