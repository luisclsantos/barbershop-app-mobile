import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/auth/auth_controller.dart';
import '../../shared/models/user_profile_model.dart';

part 'account_store.g.dart';

class AccountStore = _AccountStoreBase with _$AccountStore;

abstract class _AccountStoreBase with Store {
  AuthController authController = Modular.get();
  late UserProfile userModel;

  @observable
  bool loading = false;

  @action
  Future updateUserDisplayName(
      {required String displayName, required BuildContext context}) async {
    try {
      //?Success
      loading = true;

      //updateUserDisplayName
      await authController.updateUserDisplayName(
        displayName: displayName,
      );

      //isLogedIn
      if (authController.user != null) {
        //Set data to model
        userModel = UserProfile(
          uid: authController.user!.uid,
          name: authController.user!.displayName,
          acceptTerms: true,
          email: authController.user!.email,
        );

        //Update data
        userModel.updateUserProfileName(displayName);
      }
      loading = false;
    } catch (e) {
      //!Error
      loading = false;
      print(e.toString());
    }
  }

  @action
  Future signOut({
    required BuildContext context,
  }) async {
    try {
      //?Success
      authController.signOut().then((value) {
        Modular.to.pushReplacementNamed('/signin');
      }).catchError((authException) {});
    } on FirebaseAuthException catch (authException) {
      print(authException);
      //!Error
    }
  }

  @action
  Future deleteUser({
    required BuildContext context,
  }) async {
    try {
      //?Success
      authController.deleteUser().then((value) {
        Modular.to.pushReplacementNamed('/signin');
      }).catchError((authException) {});
    } on FirebaseAuthException catch (authException) {
      print(authException);
      //!Error
    }
  }
}
