import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/account/account_store.dart';
import 'package:flutter/material.dart';

import '../../shared/utils/size_config.dart';
import 'components/account_body.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key? key, this.title = 'AccountPage'}) : super(key: key);
  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  final AccountStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: const AccountBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        const Text(
          "Minha Conta",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Editar Minha Conta",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    ),
    centerTitle: true,
  );
}
