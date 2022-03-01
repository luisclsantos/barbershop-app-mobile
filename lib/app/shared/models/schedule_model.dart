import 'package:cloud_firestore/cloud_firestore.dart';

class ScheduleModel {
  String? id;
  DateTime? date;
  String? hour;
  int? status;
  String? local;
  String? professional;
  String? address;
  String? docId;
  String? userId;
  final DocumentReference? reference;

  ScheduleModel({
    this.id,
    this.date,
    this.hour,
    this.status,
    this.local,
    this.professional,
    this.address,
    this.docId,
    this.userId,
    this.reference,
  });

  factory ScheduleModel.fromDocument(DocumentSnapshot doc) {
    return ScheduleModel(
      id: doc['id'],
      date: DateTime.parse(doc['date'].toDate().toString()),
      hour: doc['hour'],
      status: doc['status'],
      local: doc['local'],
      professional: doc['professional'],
      address: doc['address'],
      docId: doc['docId'],
      userId: doc['userId'],
      reference: doc.reference,
    );
  }

  //?SAVES THE SCHEDULE TO THE DATABASE
  Future saveScheduleInfos(String uid) async {
    //?TO DISPLAY THE DATE IN THE STANDARD DAY/MONTH/YEAR
    final String writtenDate = '${date!.day}/${date!.month}/${date!.year}';

    //?PATTERN TO USE THE DATE AS A DOCUMENT REFERENCE IN THE DATABASE
    final String dateDocRef = '${date!.day}${date!.month}${date!.year}';

    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'id': id,
      'date': writtenDate,
      'hour': hour,
      'status': status,
      'local': local,
      'professional': professional,
      'address': address,
      'userId': uid,
      'docId': docId,
    }).then((value) async {
      //?CHANGES THE HOUR TO "NOT AVAILABLE"
      await FirebaseFirestore.instance
          .collection('book')
          .doc(dateDocRef)
          .collection('hours')
          .doc('')
          .update({
            'isAvailable': false,
          })
          .then((value) {})
          .catchError((error) {
            //!EXCEPTION
          });
    }).catchError((error) {
      //!EXCEPTION
    });
  }
}
