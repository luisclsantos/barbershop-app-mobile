import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class PortfolioSectionTitle extends StatelessWidget {
  const PortfolioSectionTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
