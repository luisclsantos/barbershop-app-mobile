import 'package:flutter/material.dart';

import '../../../shared/utils/size_config.dart';

class AccountEmailSection extends StatelessWidget {
  const AccountEmailSection({
    Key? key,
    required this.currentEmail,
  }) : super(key: key);

  final String currentEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: USER EMAIL
          Text(
            currentEmail,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
