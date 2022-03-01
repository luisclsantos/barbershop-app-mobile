import 'package:barbershops/app/shared/models/schedule_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/schedule_interface.dart';

class ScheduleRepository implements IScheduleRepository {
  final FirebaseFirestore firestore;
  String userId = FirebaseAuth.instance.currentUser!.uid;

  ScheduleRepository(this.firestore);

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
  Future<void> deleteSchedule(String reference) async {
    CollectionReference schedules = await firestore.collection('schedules');

    return schedules
        .doc(reference)
        .delete()
        .then((value) {})
        .catchError((error) {});
  }
}
