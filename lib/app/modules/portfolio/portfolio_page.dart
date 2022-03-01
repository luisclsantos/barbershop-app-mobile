import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/portfolio/portfolio_store.dart';
import 'package:flutter/material.dart';

import 'components/portfolio_body.dart';
import 'skeltons/portfolio_skelton.dart';

class PortfolioPage extends StatefulWidget {
  final String title;
  const PortfolioPage({Key? key, this.title = 'PortfolioPage'})
      : super(key: key);
  @override
  PortfolioPageState createState() => PortfolioPageState();
}

class PortfolioPageState extends State<PortfolioPage> {
  final PortfolioStore store = Modular.get();

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
      body:
          _isLoading ? const PortfolioPageSkelton() : const PortfolioPageBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        const Text(
          "Portifolio",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Opções para inspirar-se",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    ),
    centerTitle: true,
  );
}
