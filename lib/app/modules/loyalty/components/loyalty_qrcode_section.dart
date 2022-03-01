import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'loyalty_qrcode_gen.dart';

class QRCodeSection extends StatelessWidget {
  const QRCodeSection({
    Key? key,
    required this.qrCodeValue,
  }) : super(key: key);

  final String qrCodeValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(300),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(5),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: QRCodeGen(qrCodeValue: qrCodeValue),
    );
  }
}
