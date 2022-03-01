import 'package:mobx/mobx.dart';

part 'cuts_store.g.dart';

class CutsStore = _CutsStoreBase with _$CutsStore;
abstract class _CutsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}