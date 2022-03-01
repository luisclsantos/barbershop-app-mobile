import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/loyalty/loyalty_store.dart';
import 'package:flutter/material.dart';

import 'components/loyalty_body.dart';
import 'skeltons/loyalty_skelton.dart';

class LoyaltyPage extends StatefulWidget {
  final String title;
  const LoyaltyPage({Key? key, this.title = 'LoyaltyPage'}) : super(key: key);
  @override
  LoyaltyPageState createState() => LoyaltyPageState();
}

class LoyaltyPageState extends State<LoyaltyPage> {
  final LoyaltyStore store = Modular.get();

  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: _isLoading ? const LoyaltyPageSkelton() : const LoyaltyBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        const Text(
          "Cartão Fidelidade",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Complete e ganhe",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    ),
    centerTitle: true,
  );
}
