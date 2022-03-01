import 'package:barbershops/app/modules/schedule/schedule_Page.dart';
import 'package:barbershops/app/modules/schedule/schedule_store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/interfaces/schedule_interface.dart';
import '../../shared/repositories/schedule_repository.dart';

class ScheduleModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ScheduleStore(i.get())),
    Bind.lazySingleton<IScheduleRepository>(
      (i) => ScheduleRepository(FirebaseFirestore.instance),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SchedulePage()),
  ];
}
