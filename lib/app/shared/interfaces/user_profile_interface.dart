import 'package:barbershops/app/shared/models/user_profile_model.dart';

abstract class IUserProfileRepository {
  Future<UserProfile> getUserProfile(String uid);
}
