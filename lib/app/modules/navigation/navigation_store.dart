import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'navigation_store.g.dart';

class NavigationStore = _NavigationStoreBase with _$NavigationStore;

abstract class _NavigationStoreBase with Store {
  @observable
  String selectedPathPage = '/navigation/home/';

  @observable
  bool isInBookPage = false;

  @action
  selectNavigation(path) {
    Modular.to.navigate(path);
    selectedPathPage = path;
  }
}
