import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'book_section_title.dart';
import 'date_book_section.dart';
import 'hour_book_section.dart';
import 'local_book_section.dart';
import 'professional_book_section.dart';

class BookBody extends StatefulWidget {
  const BookBody({Key? key}) : super(key: key);

  @override
  _BookBodyState createState() => _BookBodyState();
}

class _BookBodyState extends State<BookBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const BookSectionTitle(text: 'Datas Disponíveis'),
            const DateBookSection(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const BookSectionTitle(text: 'Horários Disponíveis'),
            SizedBox(height: getProportionateScreenWidth(5)),
            const HourBookSection(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const BookSectionTitle(text: 'Locais'),
            SizedBox(height: getProportionateScreenWidth(5)),
            const LocalBookSection(),
            SizedBox(height: getProportionateScreenWidth(5)),
            const BookSectionTitle(text: 'Profissionais'),
            SizedBox(height: getProportionateScreenWidth(5)),
            const ProfessionalsBookSection(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
