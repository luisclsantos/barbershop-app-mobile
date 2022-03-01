import 'package:barbershops/app/shared/models/portfolio_model.dart';
import 'package:mobx/mobx.dart';

import '../../shared/interfaces/home_interface.dart';
import '../../shared/models/notification_model.dart';
import '../../shared/models/schedule_model.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final IHomeRepository repository;

  @observable
  ObservableStream<List<PortfolioModel>>? portfolioList;

  @observable
  ObservableStream<List<NotificationModel>>? notificationList;

  @observable
  ObservableStream<List<ScheduleModel>>? scheduleList;

  @observable
  String? barbershopStatus;

  HomeStoreBase(IHomeRepository this.repository) {
    getPortfolioList();
    getNotificationList();
    getScheduleList();
    getBarbershopStatus();
  }

  @action
  getPortfolioList() {
    portfolioList = repository.getPortfolio().asObservable();
  }

  @action
  getNotificationList() {
    notificationList = repository.getNotifications().asObservable();
  }

  @action
  getScheduleList() {
    scheduleList = repository.getSchedules().asObservable();
  }

  @action
  getBarbershopStatus() async {
    barbershopStatus = await repository.getBarbershopStatus();
  }
}
