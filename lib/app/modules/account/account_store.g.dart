// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStoreBase, Store {
  final _$loadingAtom = Atom(name: '_AccountStoreBase.loading');

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

  final _$updateUserDisplayNameAsyncAction =
      AsyncAction('_AccountStoreBase.updateUserDisplayName');

  @override
  Future<dynamic> updateUserDisplayName(
      {required String displayName, required BuildContext context}) {
    return _$updateUserDisplayNameAsyncAction.run(() => super
        .updateUserDisplayName(displayName: displayName, context: context));
  }

  final _$signOutAsyncAction = AsyncAction('_AccountStoreBase.signOut');

  @override
  Future<dynamic> signOut({required BuildContext context}) {
    return _$signOutAsyncAction.run(() => super.signOut(context: context));
  }

  final _$deleteUserAsyncAction = AsyncAction('_AccountStoreBase.deleteUser');

  @override
  Future<dynamic> deleteUser({required BuildContext context}) {
    return _$deleteUserAsyncAction
        .run(() => super.deleteUser(context: context));
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
