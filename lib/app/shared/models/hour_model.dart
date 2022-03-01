import 'package:cloud_firestore/cloud_firestore.dart';

class HourModel {
  String? hour;
  bool isAvailable = true;
  final DocumentReference? reference;

  HourModel({
    this.hour,
    required this.isAvailable,
    this.reference,
  });

  factory HourModel.fromDocument(DocumentSnapshot doc) {
    return HourModel(
      hour: doc['hour'],
      isAvailable: doc['isAvailable'],
      reference: doc.reference,
    );
  }

  compareTo(HourModel b) {}
}
