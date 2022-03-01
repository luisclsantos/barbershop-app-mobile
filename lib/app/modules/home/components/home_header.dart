import 'package:barbershops/app/modules/navigation/navigation_store.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/models/schedule_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/models/notification_model.dart';
import '../home_store.dart';
import 'home_header_status.dart';
import 'icon_button_with_counter.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final HomeStore store = Modular.get();
  final NavigationStore navigationStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Observer(builder: (_) {
            if (store.barbershopStatus == null) {
              return const HomeHeaderStatus(status: 'close');
            }

            if (store.barbershopStatus!.isEmpty) {
              return const HomeHeaderStatus(status: 'close');
            }

            return HomeHeaderStatus(status: store.barbershopStatus.toString());
          }),
          Observer(builder: (_) {
            if (store.scheduleList!.hasError) {
              return SchedulesIconButton(
                navigationStore: navigationStore,
                schedulesOpenQty: 0,
              );
            }
            if (store.scheduleList!.data == null) {
              return SchedulesIconButton(
                navigationStore: navigationStore,
                schedulesOpenQty: 0,
              );
            }

            List<ScheduleModel> scheduleList = store.scheduleList!.data;

            //?COUNTER PARA SUBTRAIR OS AGENDAMENTOS COM O STATUS IGUAL A 3 (CONCLUIDOS)
            int counter = 0;

            for (var item in scheduleList) {
              if (item.status == 3) {
                counter++;
              }
            }

            return SchedulesIconButton(
              navigationStore: navigationStore,
              schedulesOpenQty: scheduleList.length - counter,
            );
          }),
          Observer(builder: (_) {
            if (store.notificationList!.hasError) {
              return NotificationsIconButton(
                navigationStore: navigationStore,
                notificationQty: 0,
              );
            }
            if (store.notificationList!.data == null) {
              return NotificationsIconButton(
                navigationStore: navigationStore,
                notificationQty: 0,
              );
            }

            List<NotificationModel> notificationList =
                store.notificationList!.data;

            return NotificationsIconButton(
              navigationStore: navigationStore,
              notificationQty: notificationList.length,
            );
          }),
        ],
      ),
    );
  }
}

class SchedulesIconButton extends StatelessWidget {
  const SchedulesIconButton({
    Key? key,
    required this.navigationStore,
    required this.schedulesOpenQty,
  }) : super(key: key);

  final NavigationStore navigationStore;
  final int schedulesOpenQty;

  @override
  Widget build(BuildContext context) {
    return IconBtnWithCounter(
      svgSrc: kHomeIconBtnWithCounterSchedule,
      numOfitem: schedulesOpenQty,
      press: () {
        navigationStore.selectNavigation('/navigation/schedule/');
      },
    );
  }
}

class NotificationsIconButton extends StatelessWidget {
  const NotificationsIconButton({
    Key? key,
    required this.navigationStore,
    required this.notificationQty,
  }) : super(key: key);

  final NavigationStore navigationStore;
  final int notificationQty;

  @override
  Widget build(BuildContext context) {
    return IconBtnWithCounter(
      svgSrc: kHomeIconBtnWithCounterNotification,
      numOfitem: notificationQty,
      press: () {
        Modular.to.pushNamed('/notifications/');
      },
    );
  }
}
