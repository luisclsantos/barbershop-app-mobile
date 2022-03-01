import 'package:cloud_firestore/cloud_firestore.dart';

class PortfolioModel {
  String? id;
  String? title;
  String? description;
  String? description2;
  String? type;
  String? image;
  final DocumentReference? reference;

  PortfolioModel({
    this.id,
    this.title,
    this.description,
    this.description2,
    this.type,
    this.image,
    this.reference,
  });

  factory PortfolioModel.fromDocument(DocumentSnapshot doc) {
    return PortfolioModel(
      id: doc['id'],
      title: doc['title'],
      description: doc['description'],
      description2: doc['description2'],
      type: doc['type'],
      image: doc['image'],
      reference: doc.reference,
    );
  }
}
