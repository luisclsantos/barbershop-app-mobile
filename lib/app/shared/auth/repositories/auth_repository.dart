import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<User?> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    //Return User
    return userCredential.user!;
  }

  @override
  Future<User?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);

      // Once signed in, return the UserCredential
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential.user!;
    }
    return null;
  }

  @override
  Future<User?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return userCredential.user!;
  }

  @override
  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
    required String photoURL,
  }) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await userCredential.user!.updateDisplayName(displayName);

    await userCredential.user!.updatePhotoURL(photoURL);

    return userCredential.user!;
  }

  @override
  Future<User?> getUser() async {
    return _auth.currentUser;
  }

  @override
  Future signOut() async {
    return _auth.signOut();
  }

  @override
  Future sendPasswordResetEmail({required String email}) {
    return _auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future updateUserDisplayName({required String displayName}) {
    return _auth.currentUser!.updateDisplayName(displayName);
  }

  @override
  Future updateUserPhotoURL({required String photoURL}) {
    return _auth.currentUser!.updatePhotoURL(photoURL);
  }

  @override
  Future deleteUser() async {
    return await _auth.currentUser!.delete();
  }
}
