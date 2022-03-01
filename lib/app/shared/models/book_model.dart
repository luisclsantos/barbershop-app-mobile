import 'package:cloud_firestore/cloud_firestore.dart';

class BookModel {
  DateTime? date;
  bool isAvailable = true;
  String? writtenDate;
  final DocumentReference? reference;

  BookModel({
    this.date,
    required this.isAvailable,
    this.writtenDate,
    this.reference,
  });

  factory BookModel.fromDocument(DocumentSnapshot doc) {
    return BookModel(
      date: DateTime.parse(doc['date'].toDate().toString()),
      isAvailable: doc['isAvailable'],
      writtenDate: doc['writtenDate'],
      reference: doc.reference,
    );
  }
}
