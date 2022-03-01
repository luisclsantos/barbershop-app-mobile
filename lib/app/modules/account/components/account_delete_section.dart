import 'package:barbershops/app/modules/account/account_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/auth/auth_controller.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/utils/size_config.dart';

class DeleteAccountSection extends StatefulWidget {
  const DeleteAccountSection({
    Key? key,
  }) : super(key: key);

  @override
  State<DeleteAccountSection> createState() => _DeleteAccountSectionState();
}

class _DeleteAccountSectionState
    extends ModularState<DeleteAccountSection, AccountStore> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAlertDialog(context);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Apagar Conta',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Apagar Conta?',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: kPrimaryColor,
              ),
            ),
            content: Text(
              'Deseja realmente confirmar a exclusão total da sua conta neste aplicativo?',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.black45,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Modular.to.pop();
                },
                child: const Text(
                  'Não',
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  store.deleteUser(context: context);
                },
                child: const Text(
                  'Sim',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  getProportionateScreenWidth(20),
                ),
              ),
            ),
          );
        });
  }
}
