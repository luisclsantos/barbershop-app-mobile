import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/terms/terms_store.dart';
import 'package:flutter/material.dart';

class TermsPage extends StatefulWidget {
  final String title;
  const TermsPage({Key? key, this.title = 'TermsPage'}) : super(key: key);
  @override
  TermsPageState createState() => TermsPageState();
}

class TermsPageState extends State<TermsPage> {
  final TermsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
