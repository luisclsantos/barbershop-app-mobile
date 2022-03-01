import 'package:barbershops/app/shared/auth/auth_controller.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/models/user_profile_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'signin_store.g.dart';

class SigninStore = _SigninStoreBase with _$SigninStore;

abstract class _SigninStoreBase with Store {
  AuthController authController = Modular.get();
  late UserProfile userModel;

  @observable
  bool loading = false;

  @action
  Future signInWithGoogle({
    required BuildContext context,
    required bool isAcceptTerms,
  }) async {
    //?Is accept terms and conditions?
    if (isAcceptTerms) {
      //?True
      try {
        //?Success
        loading = true;
        await authController.signInWithGoogle();
        if (authController.user != null) {
          Modular.to.navigate('/navigation/home/');

          //Set data to model
          userModel = UserProfile(
            uid: authController.user!.uid,
            name: authController.user!.displayName,
            acceptTerms: isAcceptTerms,
            email: authController.user!.email,
          );

          //Save data
          userModel.saveUserProfileInfos();
        }
        loading = false;
      } on FirebaseAuthException catch (authException) {
        //!Error
        onFail(authException.code, context);
      }
    } else {
      //!False
      onFail(kAuthNotAcceptTermsCode, context);
    }
  }

  @action
  Future signInWithFacebook({
    required BuildContext context,
    required bool isAcceptTerms,
  }) async {
    //?Is accept terms and conditions?
    if (isAcceptTerms) {
      //?True
      try {
        //?Success
        loading = true;
        await authController.signInWithFacebook();
        if (authController.user != null) {
          Modular.to.navigate('/navigation/home/');

          //Set data to model
          userModel = UserProfile(
            uid: authController.user!.uid,
            name: authController.user!.displayName,
            acceptTerms: isAcceptTerms,
            email: authController.user!.email,
          );

          //Save data
          userModel.saveUserProfileInfos();
        }
        loading = false;
      } on FirebaseAuthException catch (authException) {
        //!Error
        onFail(authException.code, context);
      }
    } else {
      //!False
      onFail('not-accept-terms', context);
    }
  }

  @action
  Future signInWithEmailAndPassword({
    required String email,
    required String password,
    required BuildContext context,
    required bool isAcceptTerms,
  }) async {
    //?Is accept terms and conditions?
    if (isAcceptTerms) {
      //?True
      try {
        //?Success
        loading = true;
        await authController.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (authController.user != null) {
          Modular.to.navigate('/navigation/home/');
        }
        loading = false;
      } on FirebaseAuthException catch (authException) {
        //!Error
        onFail(authException.code, context);
      }
    } else {
      //!False
      onFail('not-accept-terms', context);
    }
  }

  @action
  Future sendPasswordResetEmail({
    required String email,
    required BuildContext context,
  }) async {
    try {
      //?Success
      loading = true;
      authController.sendPasswordResetEmail(email: email).then((value) {
        showSnackBar(
          'Um link para recuperação da senha foi enviado para o seu email',
          context,
          kSuccessColor,
        );
        loading = false;
      }).catchError((authException) {
        onFail(authException.code, context);
      });
      loading = false;
    } on FirebaseAuthException catch (authException) {
      //!Error
      onFail(authException.code, context);
    }
  }

  //If Login is error
  void onFail(String authException, BuildContext context) {
    loading = false;

    switch (authException) {
      case kAuthAccountExistsCode:
      case kAuthEmailAlreadyInUseCode:
        return showSnackBar(
            kAuthEmailAlreadyInUseMessage, context, kErrorColor);
      case kAuthWrongPassCode:
        return showSnackBar(kAuthWrongPassMessage, context, kErrorColor);
      case kAuthUserDisableCode:
        return showSnackBar(kAuthUserDisableMessage, context, kErrorColor);
      case kAuthManyRequestsCode:
        return showSnackBar(kAuthManyRequestsMessage, context, kErrorColor);
      case kAuthOperationNotAllowedCode:
        return showSnackBar(
            kAuthOperationNotAllowedMessage, context, kErrorColor);
      case kAuthInvalidEmailCode:
        return showSnackBar(kAuthInvalidEmailMessage, context, kErrorColor);
      case kAuthWeakPasswordCode:
        return showSnackBar(kAuthWeakPasswordMessage, context, kErrorColor);
      case kAuthInvalidCredentialCode:
        return showSnackBar(
            kAuthInvalidCredentialMessage, context, kErrorColor);
      case kAuthUserNotFoundCode:
        return showSnackBar(kAuthUserNotFoundMessage, context, kErrorColor);
      case kAuthSigninRequiredCode:
        return showSnackBar(kAuthSigninRequiredMessage, context, kErrorColor);
      case kAuthSigninCanceledCode:
        return showSnackBar(kAuthSigninCanceledMessage, context, kErrorColor);
      case kAuthNetworkErrorCode:
        return showSnackBar(kAuthNetworkErrorMessage, context, kErrorColor);
      case kAuthSigninFailedCode:
        return showSnackBar(kAuthSigninFailedMessage, context, kErrorColor);
      case kAuthNotAcceptTermsCode:
        return showSnackBar(kAuthNotAcceptTermsMessage, context, kErrorColor);
      default:
        return showSnackBar(kAuthDefaultMessage, context, kErrorColor);
    }
  }

  void showSnackBar(String message, BuildContext context, Color color) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(1.0),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    message,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: color,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
