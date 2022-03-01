import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/models/portfolio_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

class PortifolioCutCard extends StatelessWidget {
  const PortifolioCutCard({
    Key? key,
    this.width = 140,
    required this.popularCut,
  }) : super(key: key);

  final double width;
  final PortfolioModel popularCut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          //TODO: NAVIGATION
          onTap: () {
            //TODO: EDIT ARGUMENTS HERE
            Modular.to.pushNamed('/cuts/', arguments: popularCut);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(150),
                height: getProportionateScreenWidth(150),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: popularCut.id.toString(),
                    child: Image.network(
                      //TODO: CHANGE IMAGE ARRAY TO A IMAGE
                      popularCut.image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                kHomePopularCutCardSubtitle,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    popularCut.title.toString(),
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
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
            ],
          ),
        ),
      ),
    );
  }
}
