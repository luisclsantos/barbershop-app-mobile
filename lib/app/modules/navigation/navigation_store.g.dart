// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationStore on _NavigationStoreBase, Store {
  final _$selectedPathPageAtom =
      Atom(name: '_NavigationStoreBase.selectedPathPage');

  @override
  String get selectedPathPage {
    _$selectedPathPageAtom.reportRead();
    return super.selectedPathPage;
  }

  @override
  set selectedPathPage(String value) {
    _$selectedPathPageAtom.reportWrite(value, super.selectedPathPage, () {
      super.selectedPathPage = value;
    });
  }

  final _$isInBookPageAtom = Atom(name: '_NavigationStoreBase.isInBookPage');

  @override
  bool get isInBookPage {
    _$isInBookPageAtom.reportRead();
    return super.isInBookPage;
  }

  @override
  set isInBookPage(bool value) {
    _$isInBookPageAtom.reportWrite(value, super.isInBookPage, () {
      super.isInBookPage = value;
    });
  }

  final _$_NavigationStoreBaseActionController =
      ActionController(name: '_NavigationStoreBase');

  @override
  dynamic selectNavigation(dynamic path) {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
        name: '_NavigationStoreBase.selectNavigation');
    try {
      return super.selectNavigation(path);
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedPathPage: ${selectedPathPage},
isInBookPage: ${isInBookPage}
    ''';
  }
}
