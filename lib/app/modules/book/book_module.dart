import 'package:barbershops/app/modules/book/book_Page.dart';
import 'package:barbershops/app/modules/book/book_store.dart';
import 'package:barbershops/app/shared/interfaces/book_interface.dart';
import 'package:barbershops/app/shared/repositories/book_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BookModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BookStore(i.get())),
    Bind.lazySingleton<IBookRepository>(
      (i) => BookRepository(FirebaseFirestore.instance),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const BookPage()),
  ];
}
