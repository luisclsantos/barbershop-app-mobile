import 'package:mobx/mobx.dart';

part 'coupons_store.g.dart';

class CouponsStore = _CouponsStoreBase with _$CouponsStore;
abstract class _CouponsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}