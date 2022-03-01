import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/auth/auth_controller.dart';
import '../profile_store.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final ProfileStore store = Modular.get();
  AuthController authController = Modular.get();

  String userName = '';
  String userEmail = '';
  String userphotoURL = '';

  @override
  void initState() {
    if (authController.user != null) {
      userName = authController.user!.displayName!;
      userEmail = authController.user!.email!;
      userphotoURL = authController.user!.photoURL!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ProfilePic(photoURL: userphotoURL),
            SizedBox(height: getProportionateScreenWidth(20)),
            ProfileMenu(
              text: kProfileMenuTitleTextEditAccount,
              icon: kProfileAssetIconEditAccount,
              press: () {
                //TODO: ON PRESS
                Modular.to.pushNamed('/account/');
              },
            ),
            ProfileMenu(
              text: kProfileMenuTitleTextNotifications,
              icon: kProfileAssetIconNotifications,
              press: () {
                //TODO: ON PRESS
                Modular.to.pushNamed('/notifications/');
              },
            ),
            ProfileMenu(
              text: kProfileMenuTitleTextMyCoupons,
              icon: kProfileAssetIconMyCoupons,
              press: () {
                //TODO: ON PRESS
                Modular.to.pushNamed('/coupons/');
              },
            ),
            ProfileMenu(
              text: kProfileMenuTitleTextTermsAndConditions,
              icon: kProfileAssetIconTermsAndConditions,
              press: () {
                //TODO: ON PRESS
                Modular.to.pushNamed('/terms/');
              },
            ),
            ProfileMenu(
              text: kProfileMenuTitleTextLogout,
              icon: kProfileAssetIconLogout,
              press: () {
                //TODO: ON PRESS
                store.signOut(context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
