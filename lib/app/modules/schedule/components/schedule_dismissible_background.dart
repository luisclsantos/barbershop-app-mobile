import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScheduledDismissibleTileBackground extends StatelessWidget {
  const ScheduledDismissibleTileBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenWidth(250),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      color: Colors.redAccent.withOpacity(0.6),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(
                  getProportionateScreenWidth(8),
                ),
                child: SvgPicture.asset(
                  'assets/icons/icons/minus.svg',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Cancelar',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const Spacer(flex: 6)
          ],
        ),
      ),
    );
  }
}
