import 'package:barbershops/app/modules/home/skeltons/popular_prod_card_skelton.dart';
import 'package:flutter/material.dart';

class PopularProductsSkelton extends StatelessWidget {
  const PopularProductsSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          PopularProductCardSkelton(),
          PopularProductCardSkelton(),
          PopularProductCardSkelton(),
        ],
      ),
    );
  }
}
