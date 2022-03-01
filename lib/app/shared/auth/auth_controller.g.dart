// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on _AuthControllerBase, Store {
  final _$userAtom = Atom(name: '_AuthControllerBase.user');

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_AuthControllerBase.signInWithGoogle');

  @override
  Future<dynamic> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$signInWithFacebookAsyncAction =
      AsyncAction('_AuthControllerBase.signInWithFacebook');

  @override
  Future<dynamic> signInWithFacebook() {
    return _$signInWithFacebookAsyncAction
        .run(() => super.signInWithFacebook());
  }

  final _$signUpWithEmailAndPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.signUpWithEmailAndPassword');

  @override
  Future<dynamic> signUpWithEmailAndPassword(
      {required String email,
      required String password,
      required String displayName,
      required String photoURL}) {
    return _$signUpWithEmailAndPasswordAsyncAction.run(() => super
        .signUpWithEmailAndPassword(
            email: email,
            password: password,
            displayName: displayName,
            photoURL: photoURL));
  }

  final _$signInWithEmailAndPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.signInWithEmailAndPassword');

  @override
  Future<dynamic> signInWithEmailAndPassword(
      {required String email, required String password}) {
    return _$signInWithEmailAndPasswordAsyncAction.run(() =>
        super.signInWithEmailAndPassword(email: email, password: password));
  }

  final _$_AuthControllerBaseActionController =
      ActionController(name: '_AuthControllerBase');

  @override
  dynamic setUser(User? value) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> signOut() {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.signOut');
    try {
      return super.signOut();
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> sendPasswordResetEmail({required String email}) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.sendPasswordResetEmail');
    try {
      return super.sendPasswordResetEmail(email: email);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> updateUserDisplayName({required String displayName}) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.updateUserDisplayName');
    try {
      return super.updateUserDisplayName(displayName: displayName);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> updateUserPhotoURL({required String photoURL}) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.updateUserPhotoURL');
    try {
      return super.updateUserPhotoURL(photoURL: photoURL);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<dynamic> deleteUser() {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.deleteUser');
    try {
      return super.deleteUser();
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
