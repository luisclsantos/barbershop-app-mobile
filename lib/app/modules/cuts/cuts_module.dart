import 'package:barbershops/app/modules/cuts/cuts_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cuts_page.dart';

class CutsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CutsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => CutsPage(
        cuts: args.data,
      ),
    ),
  ];
}
