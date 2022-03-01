import 'package:barbershops/app/shared/models/notification_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/notifications_interface.dart';

class NotificationsRepository implements INotificationsRepository {
  final FirebaseFirestore firestore;
  String userId = FirebaseAuth.instance.currentUser!.uid;

  NotificationsRepository(this.firestore);

  @override
  Stream<List<NotificationModel>> getNotifications() {
    final Stream<QuerySnapshot> notificationsStream = firestore
        .collection('users')
        .doc(userId)
        .collection('notifications')
        .where('isRead', isEqualTo: false)
        .snapshots();

    var notifications = notificationsStream.map((query) {
      return query.docs.map((doc) {
        return NotificationModel.fromDocument(doc);
      }).toList();
    });

    return notifications;
  }
}
