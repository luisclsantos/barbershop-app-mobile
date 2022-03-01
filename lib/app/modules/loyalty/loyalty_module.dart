import 'package:barbershops/app/modules/loyalty/loyalty_Page.dart';
import 'package:barbershops/app/modules/loyalty/loyalty_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoyaltyModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoyaltyStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoyaltyPage()),
  ];
}
