import 'package:barbershops/app/modules/portfolio/portfolio_Page.dart';
import 'package:barbershops/app/modules/portfolio/portfolio_store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/repositories/portfolio_repository.dart';
import '../../shared/interfaces/portfolio_interface.dart';

class PortfolioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PortfolioStore(i.get())),
    Bind.lazySingleton<IPortfolioRepository>(
      (i) => PortfolioRepository(FirebaseFirestore.instance),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PortfolioPage()),
  ];
}
