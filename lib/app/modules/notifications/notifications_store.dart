import 'package:mobx/mobx.dart';

part 'notifications_store.g.dart';

class NotificationsStore = _NotificationsStoreBase with _$NotificationsStore;
abstract class _NotificationsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}