import 'package:barbershops/app/modules/home/home_store.dart';
import 'package:barbershops/app/shared/components/portfolio_cut_card.dart';
import 'package:barbershops/app/shared/components/section_title.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/models/portfolio_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../skeltons/popular_products_skelton.dart';

class PopularCuts extends StatefulWidget {
  const PopularCuts({Key? key}) : super(key: key);

  @override
  State<PopularCuts> createState() => _PopularCutsState();
}

class _PopularCutsState extends ModularState<PopularCuts, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: kHomeSectionPopularsCutsTitle,
            press: () {
              Modular.to.pushNamed('/portfolio/');
            },
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Observer(
            builder: (_) {
              if (store.portfolioList!.hasError) {
                return const PopularProductsSkelton();
              }

              if (store.portfolioList!.data == null) {
                return const PopularProductsSkelton();
              }

              List<PortfolioModel> portfolioList = store.portfolioList!.data;

              return Row(
                children: [
                  ...List.generate(
                    portfolioList.length,
                    (index) {
                      PortfolioModel model = portfolioList[index];
                      if (model.type == kPortfolioPopularCutsTypeConstant) {
                        return PortifolioCutCard(
                          popularCut: model,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
