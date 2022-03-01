import 'package:barbershops/app/modules/book/components/professional_tile.dart';
import 'package:barbershops/app/shared/models/professional_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../book_store.dart';

class ProfessionalsBookSection extends StatefulWidget {
  const ProfessionalsBookSection({Key? key}) : super(key: key);

  @override
  _ProfessionalsBookSectionState createState() =>
      _ProfessionalsBookSectionState();
}

class _ProfessionalsBookSectionState extends State<ProfessionalsBookSection> {
  final BookStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Observer(
        builder: (_) {
          if (store.availableProfessionalList!.hasError) {
            return Container();
          }

          if (store.availableProfessionalList!.data == null) {
            return Container();
          }

          List<ProfessionalModel> availableProfessionalList =
              store.availableProfessionalList!.data;

          return Column(
            children: [
              ...List.generate(
                availableProfessionalList.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        store.selectedProfessional =
                            availableProfessionalList[index].name.toString();
                      });
                    },
                    child: ProfessionalTile(
                      availableProfessionalList:
                          availableProfessionalList[index],
                    ),
                  );
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          );
        },
      ),
    );
  }
}
