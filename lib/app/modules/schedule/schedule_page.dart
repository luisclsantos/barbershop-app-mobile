import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/schedule/schedule_store.dart';
import 'package:flutter/material.dart';

import 'components/schedule_body.dart';
import 'skeltons/schedule_skelton.dart';

class SchedulePage extends StatefulWidget {
  final String title;
  const SchedulePage({Key? key, this.title = 'SchedulePage'}) : super(key: key);
  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage> {
  final ScheduleStore store = Modular.get();
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
      body: _isLoading ? const SchedulePageSkelton() : const ScheduleBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        const Text(
          "Minha Agenda",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Acompanhe seus agendamentos",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    ),
    centerTitle: true,
  );
}
