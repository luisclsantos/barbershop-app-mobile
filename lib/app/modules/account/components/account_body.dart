import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/auth/auth_controller.dart';
import '../../../shared/utils/size_config.dart';
import 'account_delete_section.dart';
import 'account_email_section.dart';
import 'account_form.dart';
import 'account_image.dart';
import 'account_name_section.dart';

class AccountBody extends StatefulWidget {
  const AccountBody({Key? key}) : super(key: key);

  @override
  _AccountBodyState createState() => _AccountBodyState();
}

class _AccountBodyState extends State<AccountBody> {
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
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              AccountPic(photoURL: userphotoURL),
              AccountNameSection(currentName: userName),
              AccountEmailSection(currentEmail: userEmail),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              AccountForm(currentName: userName),
              const DeleteAccountSection(),
            ],
          ),
        ),
      ),
    );
  }
}
