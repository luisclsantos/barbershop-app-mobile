import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'profile_image_skelton.dart';
import 'profile_options_skelton.dart';

class ProfilePageSkelton extends StatelessWidget {
  const ProfilePageSkelton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(5)),
              const ProfileImageSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const ProfileOptionsSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const ProfileOptionsSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const ProfileOptionsSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const ProfileOptionsSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const ProfileOptionsSectionSkelton(),
            ],
          ),
          baseColor: Colors.black,
          highlightColor: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
