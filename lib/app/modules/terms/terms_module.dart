import 'package:barbershops/app/modules/terms/terms_Page.dart';
import 'package:barbershops/app/modules/terms/terms_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TermsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TermsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const TermsPage()),
  ];
}
