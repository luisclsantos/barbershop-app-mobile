import 'package:barbershops/app/modules/book/book_module.dart';
import 'package:barbershops/app/modules/home/home_module.dart';
import 'package:barbershops/app/modules/loyalty/loyalty_module.dart';
import 'package:barbershops/app/modules/navigation/navigation_Page.dart';
import 'package:barbershops/app/modules/navigation/navigation_store.dart';
import 'package:barbershops/app/modules/portfolio/portfolio_module.dart';
import 'package:barbershops/app/modules/profile/profile_module.dart';
import 'package:barbershops/app/modules/schedule/schedule_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NavigationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => NavigationPage(
              pageSelected: args.data,
            ),
        children: [
          ModuleRoute('/home', module: HomeModule()),
          ModuleRoute('/book', module: BookModule()),
          ModuleRoute('/schedule', module: ScheduleModule()),
          ModuleRoute('/portfolio', module: PortfolioModule()),
          ModuleRoute('/loyalty', module: LoyaltyModule()),
          ModuleRoute('/profile', module: ProfileModule()),
        ]),
  ];
}
