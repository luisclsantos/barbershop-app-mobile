import 'package:barbershops/app/modules/portfolio/skeltons/portfolio_card_list_skelton.dart';
import 'package:flutter/material.dart';

class PortfolioSkeltonList extends StatelessWidget {
  const PortfolioSkeltonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          PortfolioSkeltonCardList(),
          PortfolioSkeltonCardList(),
          PortfolioSkeltonCardList(),
        ],
      ),
    );
  }
}
