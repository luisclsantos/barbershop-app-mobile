import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'repositories/auth_repository_interface.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _iAuthRepository = Modular.get();

  @observable
  User? user;

  @action
  setUser(User? value) => user = value;

  _AuthControllerBase() {
    _iAuthRepository.getUser().then(setUser);
  }

  @action
  Future signInWithGoogle() async {
    user = await _iAuthRepository.signInWithGoogle();
  }

  @action
  Future signInWithFacebook() async {
    user = await _iAuthRepository.signInWithFacebook();
  }

  @action
  Future signUpWithEmailAndPassword(
      {required String email,
      required String password,
      required String displayName,
      required String photoURL}) async {
    user = await _iAuthRepository.signUpWithEmailAndPassword(
      email: email,
      password: password,
      displayName: displayName,
      photoURL: photoURL,
    );
  }

  @action
  Future signInWithEmailAndPassword(
      {required String email, required String password}) async {
    user = await _iAuthRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @action
  Future signOut() {
    return _iAuthRepository.signOut();
  }

  @action
  Future sendPasswordResetEmail({required String email}) {
    return _iAuthRepository.sendPasswordResetEmail(email: email);
  }

  @action
  Future updateUserDisplayName({required String displayName}) {
    return _iAuthRepository.updateUserDisplayName(displayName: displayName);
  }

  @action
  Future updateUserPhotoURL({required String photoURL}) {
    return _iAuthRepository.updateUserPhotoURL(photoURL: photoURL);
  }

  @action
  Future deleteUser() {
    return _iAuthRepository.deleteUser();
  }
}
