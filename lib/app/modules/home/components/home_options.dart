import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'home_options_card.dart';

class HomeOptions extends StatelessWidget {
  const HomeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> options = kHomeOptionsArrayList;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          options.length,
          (index) => OptionsCard(
            icon: options[index]["icon"],
            text: options[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}
