import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class HourBookSectionSkelton extends StatelessWidget {
  const HourBookSectionSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> skeltonMap = [
      {'': ''},
      {'': ''},
      {'': ''},
      {'': ''},
      {'': ''},
      {'': ''},
      {'': ''},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
      child: SizedBox(
        height: getProportionateScreenWidth(100),
        width: double.infinity,
        child: GridView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(16),
            vertical: getProportionateScreenWidth(16),
          ),
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: getProportionateScreenWidth(8),
            crossAxisSpacing: getProportionateScreenWidth(4),
            childAspectRatio: 0.5,
          ),
          children: skeltonMap.map((value) {
            return Container(
              width: double.infinity,
              height: getProportionateScreenWidth(30),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.04),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
