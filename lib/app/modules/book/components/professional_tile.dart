import 'package:barbershops/app/modules/book/components/local_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/constants/constants.dart';
import '../../../shared/models/professional_model.dart';
import '../../../shared/themes/app_theme.dart';
import '../../../shared/utils/size_config.dart';
import '../book_store.dart';

class ProfessionalTile extends StatefulWidget {
  const ProfessionalTile({
    Key? key,
    required this.availableProfessionalList,
  }) : super(key: key);

  final ProfessionalModel availableProfessionalList;

  @override
  State<ProfessionalTile> createState() => _ProfessionalTileState();
}

class _ProfessionalTileState extends State<ProfessionalTile> {
  final BookStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenWidth(100),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: getProportionateScreenWidth(55),
              child: AnimatedContainer(
                padding: EdgeInsets.only(
                  right: getProportionateScreenWidth(10),
                ),
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
                child: AspectRatio(
                  aspectRatio: 0.1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      color: kPrimaryColor.withOpacity(0.1),
                      child: Image.network(
                        widget.availableProfessionalList.image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 3),
                Expanded(
                  flex: 3,
                  child: Text(
                    widget.availableProfessionalList.name.toString(),
                    style: tileTitleTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                const Spacer(flex: 1),
                Expanded(
                  flex: 5,
                  child: Text(
                    widget.availableProfessionalList.specialty.toString(),
                    style: tileSubitleTextStyle,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: LocalOptionTile(
              isSelected: store.selectedProfessional ==
                      widget.availableProfessionalList.name.toString()
                  ? true
                  : false,
            ),
          ),
        ],
      ),
    );
  }
}
