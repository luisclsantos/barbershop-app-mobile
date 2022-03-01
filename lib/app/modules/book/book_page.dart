import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/book/book_store.dart';
import 'package:flutter/material.dart';

import 'components/book_body.dart';
import 'skeltons/book_skelton.dart';

class BookPage extends StatefulWidget {
  final String title;
  const BookPage({Key? key, this.title = 'BookPage'}) : super(key: key);
  @override
  BookPageState createState() => BookPageState();
}

class BookPageState extends State<BookPage> {
  final BookStore store = Modular.get();

  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: _isLoading ? const BookPageSkelton() : const BookBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        const Text(
          "Agendar",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Agende um horário",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    ),
    centerTitle: true,
  );
}
