import 'package:mobx/mobx.dart';

part 'terms_store.g.dart';

class TermsStore = _TermsStoreBase with _$TermsStore;
abstract class _TermsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}