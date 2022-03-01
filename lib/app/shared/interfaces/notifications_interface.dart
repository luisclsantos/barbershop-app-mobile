import '../models/notification_model.dart';

abstract class INotificationsRepository {
  Stream<List<NotificationModel>> getNotifications();
}
