import 'package:barbershops/app/modules/schedule/schedule_module.dart';
import 'package:barbershops/app/modules/schedule/schedule_store.dart';
import 'package:barbershops/app/modules/schedule/skeltons/schedule_section_backtile.dart';
import 'package:barbershops/app/shared/models/schedule_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'schedule_book_tile.dart';
import 'schedule_dismissible_background.dart';

class ScheduledSection extends StatefulWidget {
  const ScheduledSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ScheduledSection> createState() => _ScheduledSectionState();
}

class _ScheduledSectionState
    extends ModularState<ScheduledSection, ScheduleStore> {
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
                  if (model.status != 3) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Dismissible(
                            onDismissed: (val) {
                              store.deleteSchedule(model.docId.toString());
                            },
                            direction: DismissDirection.startToEnd,
                            child: ScheduleBookTile(schedule: model),
                            key: ValueKey(model.id),
                            background:
                                const ScheduledDismissibleTileBackground(),
                          ),
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
