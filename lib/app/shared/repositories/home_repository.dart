import 'package:barbershops/app/shared/models/schedule_model.dart';

import 'package:barbershops/app/shared/models/portfolio_model.dart';

import 'package:barbershops/app/shared/models/notification_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/home_interface.dart';

class HomeRepository implements IHomeRepository {
  final FirebaseFirestore firestore;
  String userId = FirebaseAuth.instance.currentUser!.uid;

  HomeRepository(this.firestore);

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

  @override
  Stream<List<PortfolioModel>> getPortfolio() {
    final Stream<QuerySnapshot> portfolioStream = firestore
        .collection("portfolio")
        .orderBy('title', descending: true)
        .snapshots();

    var portifolio = portfolioStream.map((query) {
      return query.docs.map((doc) {
        return PortfolioModel.fromDocument(doc);
      }).toList();
    });

    return portifolio;
  }

  @override
  Stream<List<ScheduleModel>> getSchedules() {
    final Stream<QuerySnapshot> schedulesStream = firestore
        .collection('schedules')
        .where('userId', isEqualTo: userId)
        .snapshots();

    var schedules = schedulesStream.map((query) {
      return query.docs.map((doc) {
        return ScheduleModel.fromDocument(doc);
      }).toList();
    });

    return schedules;
  }

  @override
  getBarbershopStatus() async {
    final String status;

    status = await FirebaseFirestore.instance
        .collection('settings')
        .doc('VrbUy0HpcpWKTookkMdX')
        .get()
        .then((value) {
      return value['status'];
    });
    return status.toString();
  }
}
