import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'schedule_section_tile.dart';
import 'title_schedule_skelton.dart';

class SchedulePageSkelton extends StatefulWidget {
  const SchedulePageSkelton({Key? key}) : super(key: key);

  @override
  _SchedulePageSkeltonState createState() => _SchedulePageSkeltonState();
}

class _SchedulePageSkeltonState extends State<SchedulePageSkelton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              const ScheduleSkeltonTitle(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const ScheduleSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(20)),
              const ScheduleSkeltonTitle(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const ScheduleSectionSkelton(),
              SizedBox(height: getProportionateScreenHeight(30)),
            ],
          ),
          baseColor: Colors.black,
          highlightColor: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
