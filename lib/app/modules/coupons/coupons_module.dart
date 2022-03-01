import 'package:barbershops/app/modules/coupons/coupons_Page.dart';
import 'package:barbershops/app/modules/coupons/coupons_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CouponsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CouponsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CouponsPage()),
  ];
}
