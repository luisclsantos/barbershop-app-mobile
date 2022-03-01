import 'package:barbershops/app/modules/book/components/local_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/models/local_model.dart';
import '../../../shared/themes/app_theme.dart';
import '../../../shared/utils/size_config.dart';
import '../book_store.dart';

class LocalTile extends StatefulWidget {
  const LocalTile({
    Key? key,
    required this.availableLocationList,
  }) : super(key: key);

  final LocalModel availableLocationList;

  @override
  State<LocalTile> createState() => _LocalTileState();
}

class _LocalTileState extends State<LocalTile> {
  final BookStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
      width: double.infinity,
      height: getProportionateScreenWidth(100),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(
                      getProportionateScreenWidth(15),
                    ),
                    height: getProportionateScreenWidth(55),
                    width: getProportionateScreenWidth(55),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      kBookIconAssetPathLocal,
                      color: kIconsSVGColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    widget.availableLocationList.name.toString(),
                    style: tileTitleTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                const Spacer(flex: 1),
                Expanded(
                  flex: 5,
                  child: Text(
                    widget.availableLocationList.address.toString(),
                    style: tileSubitleTextStyle,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: LocalOptionTile(
              isSelected: store.selectedLocal ==
                      widget.availableLocationList.name.toString()
                  ? true
                  : false,
            ),
          ),
        ],
      ),
    );
  }
}
