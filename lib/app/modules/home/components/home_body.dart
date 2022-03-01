import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home_store.dart';
import 'home_banner.dart';
import 'home_header.dart';
import 'home_options.dart';
import 'home_popular_cuts.dart';
import 'home_portfolio.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                const HomeHeader(),
                SizedBox(height: getProportionateScreenWidth(5)),
                const HomeBanner(),
                const HomeOptions(),
                SizedBox(height: getProportionateScreenWidth(8)),
                const HomePortfolio(),
                SizedBox(height: getProportionateScreenWidth(8)),
                const PopularCuts(),
                SizedBox(height: getProportionateScreenWidth(8)),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
