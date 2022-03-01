import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  String? uid;
  bool? acceptTerms;
  String? name;
  String? email;
  String? image;

  UserProfile({
    this.uid,
    this.acceptTerms,
    this.name,
    this.image,
    this.email,
  });

  factory UserProfile.fromDocument(DocumentSnapshot snapshot) {
    return UserProfile(
      uid: snapshot.id.toString(),
      name: snapshot['name'],
      email: snapshot['email'],
      image: snapshot['image'],
      acceptTerms: snapshot['acceptTerms'],
    );
  }

  //*Save User Profile Data
  Future saveUserProfileInfos() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set({
          'uid': uid,
          'name': name,
          'email': email,
          'image': image,
          'acceptTerms': acceptTerms,
        })
        .then((value) {})
        .catchError((error) {});
  }

  //*Save User Profile Data
  Future updateUserProfileName(String displayName) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .update({
          'name': displayName,
        })
        .then((value) {})
        .catchError((error) {});
  }

  //*Update User Address Data
  Future updateUserPictureInfo(String userId) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .update({
          'image': image,
        })
        .then((value) {})
        .catchError((error) {});
  }
}
