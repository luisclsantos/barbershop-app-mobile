import 'package:barbershops/app/shared/components/section_title.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_portfolio_card.dart';

class HomePortfolio extends StatelessWidget {
  const HomePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: kHomeSectionPortfoliosTitle,
            press: () {
              Modular.to.pushNamed('/portfolio/');
            },
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomePortfolioCard(
                //Imagem deve ter 968x400px
                image: kHomePortfolioCardHairCutsBkgdImg,
                title: kHomePortfolioCardHairCutsTitle,
                numOfOptions: kHomePortfolioCardHairCutsNumOptions,
                //TODO: NAVIGATION
                press: () {
                  Modular.to.pushNamed('/portfolio/');
                },
              ),
              HomePortfolioCard(
                //Imagem deve ter 968x400px
                image: kHomePortfolioCardBarberCutsBkgdImg,
                title: kHomePortfolioCardBarberCutsTitle,
                numOfOptions: kHomePortfolioCardBarberCutsNumOptions,
                //TODO: NAVIGATION
                press: () {
                  Modular.to.pushNamed('/portfolio/');
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
