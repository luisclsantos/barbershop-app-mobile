import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProfileImageSectionSkelton extends StatefulWidget {
  const ProfileImageSectionSkelton({Key? key}) : super(key: key);

  @override
  _ProfileImageSectionSkeltonState createState() =>
      _ProfileImageSectionSkeltonState();
}

class _ProfileImageSectionSkeltonState
    extends State<ProfileImageSectionSkelton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: getProportionateScreenHeight(150),
        width: getProportionateScreenHeight(150),
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(50),
          vertical: getProportionateScreenWidth(5),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
