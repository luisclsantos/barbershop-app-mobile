import 'package:barbershops/app/shared/models/book_model.dart';
import 'package:barbershops/app/shared/models/professional_model.dart';
import 'package:barbershops/app/shared/models/local_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/book_interface.dart';
import '../models/hour_model.dart';

class BookRepository implements IBookRepository {
  final FirebaseFirestore firestore;
  String userId = FirebaseAuth.instance.currentUser!.uid;

  BookRepository(this.firestore);

  @override
  Stream<List<BookModel>> getAvailableDates() {
    final Stream<QuerySnapshot> availableDatesStream = firestore
        .collection('book')
        .where('isAvailable', isEqualTo: true)
        .snapshots();

    var availableDates = availableDatesStream.map((query) {
      return query.docs.map((doc) {
        return BookModel.fromDocument(doc);
      }).toList();
    });

    return availableDates;
  }

  @override
  Stream<List<HourModel>> getAvailableHours(String dateReference) {
    final Stream<QuerySnapshot> availableHoursStream = firestore
        .collection('book')
        .doc(dateReference)
        .collection('hours')
        .orderBy('hour')
        .snapshots();

    var availableHours = availableHoursStream.map((query) {
      return query.docs.map((doc) {
        return HourModel.fromDocument(doc);
      }).toList();
    });

    return availableHours;
  }

  @override
  Stream<List<LocalModel>> getAvailableLocations() {
    final Stream<QuerySnapshot> availableLocationsStream = firestore
        .collection('locations')
        .where('isAvailable', isEqualTo: true)
        .snapshots();

    var availableLocations = availableLocationsStream.map((query) {
      return query.docs.map((doc) {
        return LocalModel.fromDocument(doc);
      }).toList();
    });

    return availableLocations;
  }

  @override
  Stream<List<ProfessionalModel>> getAvailableProfessionals() {
    final Stream<QuerySnapshot> availableProfessionalsStream = firestore
        .collection('professionals')
        .where('isAvailable', isEqualTo: true)
        .snapshots();

    var availableProfessionals = availableProfessionalsStream.map((query) {
      return query.docs.map((doc) {
        return ProfessionalModel.fromDocument(doc);
      }).toList();
    });

    return availableProfessionals;
  }
}
