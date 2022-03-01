import 'package:barbershops/app/shared/models/user_profile_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../interfaces/user_profile_interface.dart';

class UserProfileRepository implements IUserProfileRepository {
  FirebaseFirestore firestore;

  UserProfileRepository({required this.firestore});

  @override
  Future<UserProfile> getUserProfile(String uid) {
    return firestore.collection('users').doc(uid).get().then((doc) {
      return UserProfile.fromDocument(doc);
    });
  }
}
