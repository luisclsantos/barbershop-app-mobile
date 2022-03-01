import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'portfolio_barbercuts_section.dart';
import 'portfolio_haircuts_section.dart';
import 'portfolio_popularcuts_section.dart';
import 'portfolio_section_title.dart';

class PortfolioPageBody extends StatefulWidget {
  const PortfolioPageBody({Key? key}) : super(key: key);

  @override
  _PortfolioPageBodyState createState() => _PortfolioPageBodyState();
}

class _PortfolioPageBodyState extends State<PortfolioPageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenWidth(5)),
            const PortfolioSectionTitle(text: 'Cortes de Cabelo'),
            const PortfolioHairCutsSection(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PortfolioSectionTitle(text: 'Estilos de Barba'),
            const PortfolioBaberCutsSection(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const PortfolioSectionTitle(text: 'Populares'),
            const PortfolioPopularCutsSection(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
