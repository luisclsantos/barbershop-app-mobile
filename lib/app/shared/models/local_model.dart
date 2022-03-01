import 'package:cloud_firestore/cloud_firestore.dart';

class LocalModel {
  String? id;
  String? name;
  String? address;
  bool? isAvailable;
  final DocumentReference? reference;

  LocalModel({
    this.id,
    this.name,
    this.address,
    this.isAvailable,
    this.reference,
  });

  factory LocalModel.fromDocument(DocumentSnapshot doc) {
    return LocalModel(
      id: doc['id'],
      name: doc['name'],
      address: doc['address'],
      isAvailable: doc['isAvailable'],
      reference: doc.reference,
    );
  }
}
