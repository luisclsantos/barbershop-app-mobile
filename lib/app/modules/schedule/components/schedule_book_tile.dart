import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/models/schedule_model.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'schedule_track_tile.dart';
import 'package:intl/intl.dart';

class ScheduleBookTile extends StatelessWidget {
  const ScheduleBookTile({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  final ScheduleModel schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenWidth(250),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(
                            getProportionateScreenWidth(10),
                          ),
                          child: SvgPicture.asset(
                            kSchedulesIconAssetPathName,
                            color: kIconsSVGColor,
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                kScheduleTileTitle,
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(18),
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: double.maxFinite,
                                width: double.maxFinite,
                                child: Text(
                                  '$kPrefixIdScheduleTile${schedule.id}',
                                  style: tileTitleTextStyle,
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  Expanded(
                                    child: Text(
                                      //?FORMATANDO ESTA DATA PARA PADRÃO COMUM DIA/MES/ANO
                                      '$kPrefixScheduleDateTile${DateFormat(kDateFormatPattern).format(schedule.date!)}',
                                      style: tileScheduleInfosTextStyle,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '$kPrefixScheduleHourTile${schedule.hour}',
                                      style: tileScheduleInfosTextStyle,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '$kPrefixScheduleLocalTile${schedule.local}',
                                      style: tileScheduleInfosTextStyle,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      '$kPrefixScheduleAddressTile${schedule.address}',
                                      style: tileScheduleInfosTextStyle,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '$kPrefixScheduleProfessionalTile${schedule.professional}',
                                      style: tileScheduleInfosTextStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ScheduleTrackTile(
                    status: schedule.status!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
