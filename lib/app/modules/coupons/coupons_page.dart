import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/coupons/coupons_store.dart';
import 'package:flutter/material.dart';

class CouponsPage extends StatefulWidget {
  final String title;
  const CouponsPage({Key? key, this.title = 'CouponsPage'}) : super(key: key);
  @override
  CouponsPageState createState() => CouponsPageState();
}
class CouponsPageState extends State<CouponsPage> {
  final CouponsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}