import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/signup/signup_store.dart';
import 'package:flutter/material.dart';

import 'components/signup_body.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key? key, this.title = 'Logon'}) : super(key: key);
  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final SignupStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const SignupBody(),
    );
  }
}
