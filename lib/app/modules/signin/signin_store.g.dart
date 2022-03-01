// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninStore on _SigninStoreBase, Store {
  final _$loadingAtom = Atom(name: '_SigninStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_SigninStoreBase.signInWithGoogle');

  @override
  Future<dynamic> signInWithGoogle(
      {required BuildContext context, required bool isAcceptTerms}) {
    return _$signInWithGoogleAsyncAction.run(() =>
        super.signInWithGoogle(context: context, isAcceptTerms: isAcceptTerms));
  }

  final _$signInWithFacebookAsyncAction =
      AsyncAction('_SigninStoreBase.signInWithFacebook');

  @override
  Future<dynamic> signInWithFacebook(
      {required BuildContext context, required bool isAcceptTerms}) {
    return _$signInWithFacebookAsyncAction.run(() => super
        .signInWithFacebook(context: context, isAcceptTerms: isAcceptTerms));
  }

  final _$signInWithEmailAndPasswordAsyncAction =
      AsyncAction('_SigninStoreBase.signInWithEmailAndPassword');

  @override
  Future<dynamic> signInWithEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext context,
      required bool isAcceptTerms}) {
    return _$signInWithEmailAndPasswordAsyncAction.run(() => super
        .signInWithEmailAndPassword(
            email: email,
            password: password,
            context: context,
            isAcceptTerms: isAcceptTerms));
  }

  final _$sendPasswordResetEmailAsyncAction =
      AsyncAction('_SigninStoreBase.sendPasswordResetEmail');

  @override
  Future<dynamic> sendPasswordResetEmail(
      {required String email, required BuildContext context}) {
    return _$sendPasswordResetEmailAsyncAction.run(
        () => super.sendPasswordResetEmail(email: email, context: context));
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
