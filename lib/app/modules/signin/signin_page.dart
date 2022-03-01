import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/signin/signin_store.dart';
import 'package:flutter/material.dart';

import 'components/signin_body.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key? key, this.title = 'Login'}) : super(key: key);
  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const SigninBody(),
    );
  }
}
