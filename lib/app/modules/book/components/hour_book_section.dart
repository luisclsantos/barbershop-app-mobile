import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/models/hour_model.dart';
import '../book_store.dart';
import 'hour_option_tile.dart';
import 'hour_option_tile_cross_out_text.dart';

class HourBookSection extends StatefulWidget {
  const HourBookSection({
    Key? key,
  }) : super(key: key);

  @override
  State<HourBookSection> createState() => _HourBookSectionState();
}

class _HourBookSectionState extends State<HourBookSection> {
  final BookStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(6)),
      child: SizedBox(
        height: getProportionateScreenWidth(100),
        width: double.infinity,
        child: Observer(
          builder: (_) {
            if (store.availableHourList!.hasError) {
              return Container();
            }

            if (store.availableHourList!.data == null) {
              return Container();
            }

            List<HourModel> availableHourList = store.availableHourList!.data;

            return GridView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16),
                  vertical: getProportionateScreenWidth(16),
                ),
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: getProportionateScreenWidth(8),
                  crossAxisSpacing: getProportionateScreenWidth(4),
                  childAspectRatio: 0.5,
                ),
                children: [
                  ...List.generate(
                    availableHourList.length,
                    (index) {
                      HourModel model = availableHourList[index];

                      if (model.isAvailable == true) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              store.selectedHour = model.hour.toString();
                            });
                          },
                          child: store.selectedHour == model.hour.toString()
                              ? HourOptionTile(
                                  isSelected: true,
                                  hour: model.hour.toString(),
                                )
                              : HourOptionTile(
                                  isSelected: false,
                                  hour: model.hour.toString(),
                                ),
                        );
                      } else {
                        return HourOptionTileCrossOutText(
                          isSelected: false,
                          hour: model.hour.toString(),
                        );
                      }
                    },
                  ),
                ]

                /*availableHourList.map((value) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      store.selectedHour = value.hour.toString();
                    });
                  },
                  child: store.selectedHour == value.hour.toString()
                      ? HourOptionTile(
                          isSelected: true,
                          hour: value.hour.toString(),
                        )
                      : HourOptionTile(
                          isSelected: false,
                          hour: value.hour.toString(),
                        ),
                );
              }).toList(),*/
                );
          },
        ),
      ),
    );
  }
}
