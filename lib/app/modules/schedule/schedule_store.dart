import 'package:mobx/mobx.dart';

import '../../shared/interfaces/schedule_interface.dart';
import '../../shared/models/schedule_model.dart';

part 'schedule_store.g.dart';

class ScheduleStore = _ScheduleStoreBase with _$ScheduleStore;

abstract class _ScheduleStoreBase with Store {
  final IScheduleRepository repository;

  @observable
  ObservableStream<List<ScheduleModel>>? scheduleList;

  _ScheduleStoreBase(IScheduleRepository this.repository) {
    getScheduleList();
  }

  @action
  getScheduleList() {
    scheduleList = repository.getSchedules().asObservable();
  }

  @action
  Future<void> deleteSchedule(String reference) async {
    await repository.deleteSchedule(reference);
  }
}
