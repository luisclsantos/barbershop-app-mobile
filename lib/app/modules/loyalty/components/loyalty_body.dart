import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'loyalty_card_section.dart';
import 'loyalty_qrcode_section.dart';
import 'loyalty_section_title.dart';

class LoyaltyBody extends StatefulWidget {
  const LoyaltyBody({Key? key}) : super(key: key);

  @override
  _LoyaltyBodyState createState() => _LoyaltyBodyState();
}

class _LoyaltyBodyState extends State<LoyaltyBody> {
  int totalAmountPoints = 10;
  int acquiredPoints = 7;
  double bonusValue = 20.0;

  bool isCompletedLoyaltyCard = true;

  String qrCodeValue = '95AjsdjgAGHGye65asdAkgha6566A';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const LoyaltySectionTitle(text: 'Meu Cartão Fidelidade'),
            SizedBox(height: getProportionateScreenWidth(5)),
            LoyaltyCardSection(
              totalAmountPoints: totalAmountPoints,
              acquiredPoints: acquiredPoints,
              bonusValue: bonusValue,
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            isCompletedLoyaltyCard
                ? const LoyaltySectionTitle(text: 'Meu Cupom')
                : Container(),
            SizedBox(height: getProportionateScreenWidth(5)),
            isCompletedLoyaltyCard
                ? QRCodeSection(qrCodeValue: qrCodeValue)
                : Container(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
