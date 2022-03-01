import 'package:barbershops/app/modules/book/components/local_tile.dart';
import 'package:barbershops/app/shared/models/local_model.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../book_store.dart';

class LocalBookSection extends StatefulWidget {
  const LocalBookSection({
    Key? key,
  }) : super(key: key);

  @override
  State<LocalBookSection> createState() => _LocalBookSectionState();
}

class _LocalBookSectionState extends State<LocalBookSection> {
  final BookStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Observer(
        builder: (_) {
          if (store.availableLocationList!.hasError) {
            return Container();
          }

          if (store.availableLocationList!.data == null) {
            return Container();
          }

          List<LocalModel> availableLocationList =
              store.availableLocationList!.data;

          return Column(
            children: [
              ...List.generate(
                availableLocationList.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        store.selectedLocal =
                            availableLocationList[index].name.toString();
                      });
                    },
                    child: LocalTile(
                        availableLocationList: availableLocationList[index]),
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
