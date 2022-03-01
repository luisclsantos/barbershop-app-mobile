import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  String? id;
  String? subject;
  String? text;
  bool? isRead;
  final DocumentReference? reference;

  NotificationModel({
    this.id,
    this.subject,
    this.text,
    this.isRead,
    this.reference,
  });

  factory NotificationModel.fromDocument(DocumentSnapshot doc) {
    return NotificationModel(
      id: doc['id'],
      subject: doc['subject'],
      text: doc['text'],
      isRead: doc['isRead'],
      reference: doc.reference,
    );
  }
}
