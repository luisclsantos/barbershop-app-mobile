// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$portfolioListAtom = Atom(name: 'HomeStoreBase.portfolioList');

  @override
  ObservableStream<List<PortfolioModel>>? get portfolioList {
    _$portfolioListAtom.reportRead();
    return super.portfolioList;
  }

  @override
  set portfolioList(ObservableStream<List<PortfolioModel>>? value) {
    _$portfolioListAtom.reportWrite(value, super.portfolioList, () {
      super.portfolioList = value;
    });
  }

  final _$notificationListAtom = Atom(name: 'HomeStoreBase.notificationList');

  @override
  ObservableStream<List<NotificationModel>>? get notificationList {
    _$notificationListAtom.reportRead();
    return super.notificationList;
  }

  @override
  set notificationList(ObservableStream<List<NotificationModel>>? value) {
    _$notificationListAtom.reportWrite(value, super.notificationList, () {
      super.notificationList = value;
    });
  }

  final _$scheduleListAtom = Atom(name: 'HomeStoreBase.scheduleList');

  @override
  ObservableStream<List<ScheduleModel>>? get scheduleList {
    _$scheduleListAtom.reportRead();
    return super.scheduleList;
  }

  @override
  set scheduleList(ObservableStream<List<ScheduleModel>>? value) {
    _$scheduleListAtom.reportWrite(value, super.scheduleList, () {
      super.scheduleList = value;
    });
  }

  final _$barbershopStatusAtom = Atom(name: 'HomeStoreBase.barbershopStatus');

  @override
  String? get barbershopStatus {
    _$barbershopStatusAtom.reportRead();
    return super.barbershopStatus;
  }

  @override
  set barbershopStatus(String? value) {
    _$barbershopStatusAtom.reportWrite(value, super.barbershopStatus, () {
      super.barbershopStatus = value;
    });
  }

  final _$getBarbershopStatusAsyncAction =
      AsyncAction('HomeStoreBase.getBarbershopStatus');

  @override
  Future getBarbershopStatus() {
    return _$getBarbershopStatusAsyncAction
        .run(() => super.getBarbershopStatus());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  dynamic getPortfolioList() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getPortfolioList');
    try {
      return super.getPortfolioList();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getNotificationList() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getNotificationList');
    try {
      return super.getNotificationList();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getScheduleList() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getScheduleList');
    try {
      return super.getScheduleList();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
portfolioList: ${portfolioList},
notificationList: ${notificationList},
scheduleList: ${scheduleList},
barbershopStatus: ${barbershopStatus}
    ''';
  }
}
