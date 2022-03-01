import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ScheduleTrackTile extends StatelessWidget {
  const ScheduleTrackTile({
    Key? key,
    required this.status,
  }) : super(key: key);

  final int status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SfLinearGauge(
          minimum: 1,
          maximum: 3,
          interval: 1,
          showTicks: false,
          ranges: [
            LinearGaugeRange(
              startValue: 1,
              endValue: double.parse(status.toString()),
              startWidth: 6,
              endWidth: 6,
              color: kPrimaryColor,
              position: LinearElementPosition.cross,
              edgeStyle: LinearEdgeStyle.bothCurve,
            ),
          ],
          markerPointers: [
            LinearWidgetPointer(
              value: 1,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kPrimaryColor),
                child: Text(
                  '1',
                  style: trackSelectedTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            LinearWidgetPointer(
              value: 2,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (status == 2 || status == 3)
                      ? kPrimaryColor
                      : Colors.white,
                ),
                child: Text(
                  '2',
                  style: (status == 2 || status == 3)
                      ? trackSelectedTextStyle
                      : trackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            LinearWidgetPointer(
              value: 3,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (status == 3) ? kPrimaryColor : Colors.white,
                ),
                child: Text(
                  '3',
                  style:
                      (status == 3) ? trackSelectedTextStyle : trackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
          axisTrackStyle: const LinearAxisTrackStyle(
            thickness: 6,
            color: Colors.white,
            edgeStyle: LinearEdgeStyle.bothCurve,
          ),
          labelOffset: 10,
          labelFormatterCallback: (label) {
            if (label == '1') {
              return kScheduleStatus1;
            }

            if (label == '2') {
              return kScheduleStatus2;
            }

            if (label == '3') {
              return kScheduleStatus3;
            }

            return label;
          }),
    );
  }
}
