import 'package:barbershops/app/modules/notifications/notifications_Page.dart';
import 'package:barbershops/app/modules/notifications/notifications_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotificationsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NotificationsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => NotificationsPage()),
  ];
}
