import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/utils/size_config.dart';

class AccountNameSection extends StatelessWidget {
  const AccountNameSection({
    Key? key,
    required this.currentName,
  }) : super(key: key);

  final String currentName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: USER NAME
          Text(
            currentName,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
