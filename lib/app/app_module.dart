import 'package:barbershops/app/modules/loyalty/loyalty_module.dart';
import 'package:barbershops/app/modules/notifications/notifications_module.dart';
import 'package:barbershops/onboarding/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/account/account_module.dart';
import 'modules/book/book_module.dart';
import 'modules/coupons/coupons_module.dart';
import 'modules/cuts/cuts_module.dart';
import 'modules/navigation/navigation_module.dart';
import 'modules/portfolio/portfolio_module.dart';
import 'modules/profile/profile_module.dart';
import 'modules/schedule/schedule_module.dart';
import 'modules/signin/signin_module.dart';
import 'modules/signup/signup_module.dart';
import 'modules/terms/terms_module.dart';
import 'shared/auth/auth_controller.dart';
import 'shared/auth/repositories/auth_repository.dart';
import 'shared/auth/repositories/auth_repository_interface.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => const OnboardingPage()),
    ModuleRoute('/signin', module: SigninModule()),
    ModuleRoute('/signup', module: SignupModule()),
    ModuleRoute('/book', module: BookModule()),
    ModuleRoute('/schedule', module: ScheduleModule()),
    ModuleRoute('/portfolio', module: PortfolioModule()),
    ModuleRoute('/loyalty', module: LoyaltyModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    ModuleRoute('/cuts', module: CutsModule()),
    ModuleRoute('/coupons', module: CouponsModule()),
    ModuleRoute('/account', module: AccountModule()),
    ModuleRoute('/terms', module: TermsModule()),
    ModuleRoute('/notifications', module: NotificationsModule()),
    ModuleRoute('/navigation', module: NavigationModule()),
  ];
}
