import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'onboarding_body.dart';

class OnboardingPage extends StatefulWidget {
  final String title;
  const OnboardingPage({Key? key, this.title = 'OnboardingPage'})
      : super(key: key);
  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    changeStatusBar();
  }

  changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnboardingBody(),
    );
  }
}
