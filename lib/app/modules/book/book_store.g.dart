// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookStore on _BookStoreBase, Store {
  final _$availableDatesListAtom =
      Atom(name: '_BookStoreBase.availableDatesList');

  @override
  ObservableStream<List<BookModel>>? get availableDatesList {
    _$availableDatesListAtom.reportRead();
    return super.availableDatesList;
  }

  @override
  set availableDatesList(ObservableStream<List<BookModel>>? value) {
    _$availableDatesListAtom.reportWrite(value, super.availableDatesList, () {
      super.availableDatesList = value;
    });
  }

  final _$availableHourListAtom =
      Atom(name: '_BookStoreBase.availableHourList');

  @override
  ObservableStream<List<HourModel>>? get availableHourList {
    _$availableHourListAtom.reportRead();
    return super.availableHourList;
  }

  @override
  set availableHourList(ObservableStream<List<HourModel>>? value) {
    _$availableHourListAtom.reportWrite(value, super.availableHourList, () {
      super.availableHourList = value;
    });
  }

  final _$availableLocationListAtom =
      Atom(name: '_BookStoreBase.availableLocationList');

  @override
  ObservableStream<List<LocalModel>>? get availableLocationList {
    _$availableLocationListAtom.reportRead();
    return super.availableLocationList;
  }

  @override
  set availableLocationList(ObservableStream<List<LocalModel>>? value) {
    _$availableLocationListAtom.reportWrite(value, super.availableLocationList,
        () {
      super.availableLocationList = value;
    });
  }

  final _$availableProfessionalListAtom =
      Atom(name: '_BookStoreBase.availableProfessionalList');

  @override
  ObservableStream<List<ProfessionalModel>>? get availableProfessionalList {
    _$availableProfessionalListAtom.reportRead();
    return super.availableProfessionalList;
  }

  @override
  set availableProfessionalList(
      ObservableStream<List<ProfessionalModel>>? value) {
    _$availableProfessionalListAtom
        .reportWrite(value, super.availableProfessionalList, () {
      super.availableProfessionalList = value;
    });
  }

  final _$dateReferenceAtom = Atom(name: '_BookStoreBase.dateReference');

  @override
  String? get dateReference {
    _$dateReferenceAtom.reportRead();
    return super.dateReference;
  }

  @override
  set dateReference(String? value) {
    _$dateReferenceAtom.reportWrite(value, super.dateReference, () {
      super.dateReference = value;
    });
  }

  final _$selectedDateAtom = Atom(name: '_BookStoreBase.selectedDate');

  @override
  DateTime? get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime? value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  final _$selectedHourAtom = Atom(name: '_BookStoreBase.selectedHour');

  @override
  String? get selectedHour {
    _$selectedHourAtom.reportRead();
    return super.selectedHour;
  }

  @override
  set selectedHour(String? value) {
    _$selectedHourAtom.reportWrite(value, super.selectedHour, () {
      super.selectedHour = value;
    });
  }

  final _$selectedLocalAtom = Atom(name: '_BookStoreBase.selectedLocal');

  @override
  String? get selectedLocal {
    _$selectedLocalAtom.reportRead();
    return super.selectedLocal;
  }

  @override
  set selectedLocal(String? value) {
    _$selectedLocalAtom.reportWrite(value, super.selectedLocal, () {
      super.selectedLocal = value;
    });
  }

  final _$selectedProfessionalAtom =
      Atom(name: '_BookStoreBase.selectedProfessional');

  @override
  String? get selectedProfessional {
    _$selectedProfessionalAtom.reportRead();
    return super.selectedProfessional;
  }

  @override
  set selectedProfessional(String? value) {
    _$selectedProfessionalAtom.reportWrite(value, super.selectedProfessional,
        () {
      super.selectedProfessional = value;
    });
  }

  final _$_BookStoreBaseActionController =
      ActionController(name: '_BookStoreBase');

  @override
  dynamic getAvailableDatesList() {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.getAvailableDatesList');
    try {
      return super.getAvailableDatesList();
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAvailableHourList(String dateReference) {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.getAvailableHourList');
    try {
      return super.getAvailableHourList(dateReference);
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAvailableLocations() {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.getAvailableLocations');
    try {
      return super.getAvailableLocations();
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAvailableProfessionals() {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.getAvailableProfessionals');
    try {
      return super.getAvailableProfessionals();
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<DateTime> getBlackoutDates() {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.getBlackoutDates');
    try {
      return super.getBlackoutDates();
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool selectableDayPredicateDates(DateTime date) {
    final _$actionInfo = _$_BookStoreBaseActionController.startAction(
        name: '_BookStoreBase.selectableDayPredicateDates');
    try {
      return super.selectableDayPredicateDates(date);
    } finally {
      _$_BookStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
availableDatesList: ${availableDatesList},
availableHourList: ${availableHourList},
availableLocationList: ${availableLocationList},
availableProfessionalList: ${availableProfessionalList},
dateReference: ${dateReference},
selectedDate: ${selectedDate},
selectedHour: ${selectedHour},
selectedLocal: ${selectedLocal},
selectedProfessional: ${selectedProfessional}
    ''';
  }
}
