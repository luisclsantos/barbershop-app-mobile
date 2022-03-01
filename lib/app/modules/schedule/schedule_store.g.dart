// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ScheduleStore on _ScheduleStoreBase, Store {
  final _$scheduleListAtom = Atom(name: '_ScheduleStoreBase.scheduleList');

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

  final _$deleteScheduleAsyncAction =
      AsyncAction('_ScheduleStoreBase.deleteSchedule');

  @override
  Future<void> deleteSchedule(String reference) {
    return _$deleteScheduleAsyncAction
        .run(() => super.deleteSchedule(reference));
  }

  final _$_ScheduleStoreBaseActionController =
      ActionController(name: '_ScheduleStoreBase');

  @override
  dynamic getScheduleList() {
    final _$actionInfo = _$_ScheduleStoreBaseActionController.startAction(
        name: '_ScheduleStoreBase.getScheduleList');
    try {
      return super.getScheduleList();
    } finally {
      _$_ScheduleStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scheduleList: ${scheduleList}
    ''';
  }
}
