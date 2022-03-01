import 'package:barbershops/app/modules/signin/signin_Page.dart';
import 'package:barbershops/app/modules/signin/signin_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'forgotpass_page.dart';

class SigninModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SigninStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SigninPage()),
    ChildRoute('/forgotpass', child: (_, __) => const ForgotpassPage()),
  ];
}
