import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class LocalProfBookSectionkelton extends StatelessWidget {
  const LocalProfBookSectionkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          ...List.generate(
            2,
            (index) {
              return Container(
                width: double.infinity,
                height: getProportionateScreenWidth(100),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.04),
                ),
              );
            },
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}
