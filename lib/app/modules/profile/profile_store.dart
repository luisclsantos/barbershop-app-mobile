import 'package:barbershops/app/shared/auth/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  AuthController authController = Modular.get();

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
}
