import 'package:cloud_firestore/cloud_firestore.dart';

class ProfessionalModel {
  String? id;
  String? name;
  String? specialty;
  String? image;
  bool? isAvailable;
  final DocumentReference? reference;

  ProfessionalModel({
    this.id,
    this.name,
    this.specialty,
    this.image,
    this.isAvailable,
    this.reference,
  });

  factory ProfessionalModel.fromDocument(DocumentSnapshot doc) {
    return ProfessionalModel(
      id: doc['id'],
      name: doc['name'],
      specialty: doc['specialty'],
      image: doc['image'],
      isAvailable: doc['isAvailable'],
      reference: doc.reference,
    );
  }
}
