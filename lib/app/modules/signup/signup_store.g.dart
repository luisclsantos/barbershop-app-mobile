// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupStore on _SignupStoreBase, Store {
  final _$loadingAtom = Atom(name: '_SignupStoreBase.loading');

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

  final _$signUpWithEmailAndPasswordAsyncAction =
      AsyncAction('_SignupStoreBase.signUpWithEmailAndPassword');

  @override
  Future<dynamic> signUpWithEmailAndPassword(
      {required String email,
      required String password,
      required String name,
      required String photoURL,
      required bool isAcceptTerms,
      required BuildContext context}) {
    return _$signUpWithEmailAndPasswordAsyncAction.run(() => super
        .signUpWithEmailAndPassword(
            email: email,
            password: password,
            name: name,
            photoURL: photoURL,
            isAcceptTerms: isAcceptTerms,
            context: context));
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
