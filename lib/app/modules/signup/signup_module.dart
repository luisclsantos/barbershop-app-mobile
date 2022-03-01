import 'package:barbershops/app/modules/signup/signup_Page.dart';
import 'package:barbershops/app/modules/signup/signup_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignupModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignupStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SignupPage()),
  ];
}
