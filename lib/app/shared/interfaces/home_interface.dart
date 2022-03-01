import '../models/notification_model.dart';
import '../models/portfolio_model.dart';
import '../models/schedule_model.dart';

abstract class IHomeRepository {
  Stream<List<NotificationModel>> getNotifications();
  Stream<List<PortfolioModel>> getPortfolio();
  Stream<List<ScheduleModel>> getSchedules();
  getBarbershopStatus();
}
