import 'package:barbershops/app/shared/components/custom_app_bar.dart';
import 'package:barbershops/app/shared/models/portfolio_model.dart';
import 'package:flutter/material.dart';

import 'cuts_image.dart';

class CutsBody extends StatelessWidget {
  const CutsBody({Key? key, required this.cuts}) : super(key: key);

  final PortfolioModel cuts;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        children: [
          CutsImage(cuts: cuts),
          CustomAppBar(),
        ],
      ),
    );
  }
}
