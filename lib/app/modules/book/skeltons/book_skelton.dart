import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'date_book_skelton.dart';
import 'hour_book_skelton.dart';
import 'local_prof_book_skelton.dart';
import 'title_book_skelton.dart';

class BookPageSkelton extends StatefulWidget {
  const BookPageSkelton({Key? key}) : super(key: key);

  @override
  _BookPageSkeltonState createState() => _BookPageSkeltonState();
}

class _BookPageSkeltonState extends State<BookPageSkelton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              const BookSectionTitleSkelton(),
              const DateBookSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const BookSectionTitleSkelton(),
              const HourBookSectionSkelton(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const BookSectionTitleSkelton(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const LocalProfBookSectionkelton(),
              SizedBox(height: getProportionateScreenWidth(5)),
              const BookSectionTitleSkelton(),
              const LocalProfBookSectionkelton(),
              SizedBox(height: getProportionateScreenHeight(30)),
            ],
          ),
          baseColor: Colors.black,
          highlightColor: Colors.black.withOpacity(0.04),
        ),
      ),
    );
  }
}
