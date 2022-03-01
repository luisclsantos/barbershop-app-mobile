import 'package:mobx/mobx.dart';

part 'loyalty_store.g.dart';

class LoyaltyStore = _LoyaltyStoreBase with _$LoyaltyStore;
abstract class _LoyaltyStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}