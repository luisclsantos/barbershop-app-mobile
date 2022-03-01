import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class QRCodeGen extends StatelessWidget {
  const QRCodeGen({
    Key? key,
    required this.qrCodeValue,
  }) : super(key: key);

  final String qrCodeValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 9,
          child: SfBarcodeGenerator(
            value: qrCodeValue,
            symbology: QRCode(
              inputMode: QRInputMode.alphaNumeric,
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: Text(
            kQRCodeInstructionMsg,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
