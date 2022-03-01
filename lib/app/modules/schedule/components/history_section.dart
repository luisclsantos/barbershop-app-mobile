import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/models/schedule_model.dart';
import '../schedule_store.dart';
import '../skeltons/schedule_section_backtile.dart';
import 'schedule_book_tile.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({Key? key}) : super(key: key);

  @override
  _HistorySectionState createState() => _HistorySectionState();
}

class _HistorySectionState extends ModularState<HistorySection, ScheduleStore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Observer(
        builder: (_) {
          if (store.scheduleList!.hasError) {
            return const ScheduleSectionBackSkelton();
          }

          if (store.scheduleList!.data == null) {
            return const ScheduleSectionBackSkelton();
          }

          List<ScheduleModel> scheduleList = store.scheduleList!.data;

          return Column(
            children: [
              ...List.generate(
                scheduleList.length,
                (index) {
                  ScheduleModel model = scheduleList[index];
                  if (model.status == 3) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ScheduleBookTile(schedule: model),
                        ),
                        SizedBox(height: getProportionateScreenHeight(10)),
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
