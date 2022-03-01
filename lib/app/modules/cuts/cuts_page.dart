import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/cuts/cuts_store.dart';
import 'package:flutter/material.dart';

import '../../shared/models/portfolio_model.dart';
import 'components/cuts_body.dart';

class CutsPage extends StatefulWidget {
  final String title;
  final PortfolioModel cuts;

  const CutsPage({Key? key, this.title = 'CutsPage', required this.cuts})
      : super(key: key);

  @override
  CutsPageState createState() => CutsPageState();
}

class CutsPageState extends State<CutsPage> {
  final CutsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CutsBody(cuts: widget.cuts),
    );
  }
}
