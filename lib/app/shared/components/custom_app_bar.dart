import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({Key? key})
      : super(
          key: key,
          child: Container(),
          preferredSize: Size.fromHeight(
            AppBar().preferredSize.height,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(height: getProportionateScreenWidth(40)),
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  padding: MaterialStateProperty.resolveWith(
                      (states) => EdgeInsets.zero),
                ),
                onPressed: () => Modular.to.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/icons/left-arrow.svg",
                  height: 15,
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Text(
                    "5.0",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    "assets/icons/icons/star.svg",
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
