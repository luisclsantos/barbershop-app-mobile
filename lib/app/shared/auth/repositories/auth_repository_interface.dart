import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<User?> getUser();
  Future signOut();
  Future deleteUser();
  Future sendPasswordResetEmail({required String email});
  Future updateUserDisplayName({required String displayName});
  Future updateUserPhotoURL({required String photoURL});

  Future<User?> signInWithGoogle();
  Future<User?> signInWithFacebook();

  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
    required String photoURL,
  });

  Future<User?> signInWithEmailAndPassword(
      {required String email, required String password});
}
