import '../models/schedule_model.dart';

abstract class IScheduleRepository {
  Stream<List<ScheduleModel>> getSchedules();
  Future<void> deleteSchedule(String reference);
}
