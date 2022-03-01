import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'history_section.dart';
import 'schedule_section_title.dart';
import 'scheduled_section.dart';

class ScheduleBody extends StatefulWidget {
  const ScheduleBody({Key? key}) : super(key: key);

  @override
  _ScheduleBodyState createState() => _ScheduleBodyState();
}

class _ScheduleBodyState extends State<ScheduleBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const ScheduleSectionTitle(text: 'Agendados'),
            SizedBox(height: getProportionateScreenWidth(5)),
            const ScheduledSection(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const ScheduleSectionTitle(text: 'Histórico'),
            SizedBox(height: getProportionateScreenWidth(5)),
            const HistorySection(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
