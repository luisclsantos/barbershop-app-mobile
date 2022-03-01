import 'package:barbershops/app/modules/account/account_Page.dart';
import 'package:barbershops/app/modules/account/account_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AccountModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AccountStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AccountPage()),
  ];
}
