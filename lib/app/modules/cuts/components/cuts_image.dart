import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/models/portfolio_model.dart';
import 'cuts_description_section.dart';

class CutsImage extends StatefulWidget {
  const CutsImage({
    Key? key,
    required this.cuts,
  }) : super(key: key);

  final PortfolioModel cuts;

  @override
  _CutsImageState createState() => _CutsImageState();
}

class _CutsImageState extends State<CutsImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Hero(
            tag: widget.cuts.id.toString(),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Image.network(widget.cuts.image.toString()),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenWidth(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  kHomePopularCutCardSubtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cuts.title.toString(),
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(24),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                        height: getProportionateScreenWidth(28),
                        width: getProportionateScreenWidth(28),
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/icons/star.svg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(14)),
              CutsDescriptionSection(cut: widget.cuts),
            ],
          ),
        ),
      ],
    );
  }
}
