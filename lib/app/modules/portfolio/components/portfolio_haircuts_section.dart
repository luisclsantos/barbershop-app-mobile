import 'package:barbershops/app/modules/portfolio/portfolio_store.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/components/portfolio_cut_card.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/models/portfolio_model.dart';
import '../../home/skeltons/popular_products_skelton.dart';

class PortfolioHairCutsSection extends StatefulWidget {
  const PortfolioHairCutsSection({Key? key}) : super(key: key);

  @override
  State<PortfolioHairCutsSection> createState() =>
      _PortfolioHairCutsSectionState();
}

class _PortfolioHairCutsSectionState
    extends ModularState<PortfolioHairCutsSection, PortfolioStore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Observer(builder: (_) {
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
                    if (model.type == kPortfolioHairCutsTypeConstant) {
                      return PortifolioCutCard(popularCut: model);
                    }
                    return Container();
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            );
          }),
        ),
      ],
    );
  }
}
