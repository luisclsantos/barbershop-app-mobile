import 'package:barbershops/app/modules/book/book_store.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class DateBookSection extends StatefulWidget {
  const DateBookSection({
    Key? key,
  }) : super(key: key);

  @override
  State<DateBookSection> createState() => _DateBookSectionState();
}

class _DateBookSectionState extends ModularState<DateBookSection, BookStore> {
  late List<DateTime> _blackoutDates;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(5),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.04),
      ),
      child: Observer(
        builder: (_) {
          _blackoutDates = store.getBlackoutDates();
          return SfDateRangePicker(
            todayHighlightColor: kPrimaryColor,
            selectionColor: kPrimaryColor,
            enablePastDates: false,
            toggleDaySelection: true,
            showNavigationArrow: true,
            selectionShape: kSelectionShapeDate,
            monthCellStyle: const DateRangePickerMonthCellStyle(
              blackoutDateTextStyle: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            monthViewSettings: DateRangePickerMonthViewSettings(
              showTrailingAndLeadingDates: false,
              blackoutDates: _blackoutDates,
            ),
            //!ESTA OPÇÃO É OPCIONAL
            selectableDayPredicate: store.selectableDayPredicateDates,
            onSelectionChanged: (selectedDate) {
              //?SE ESTE ARG FOR NULL NAO FAZER NADA
              if (selectedDate.value != null) {
                //?CONVERTENDO PARA UM STRING E POSTERIORMENTE PARA UM DATETIME
                DateTime notFormatedDate =
                    DateTime.parse(selectedDate.value.toString());

                store.selectedDate = notFormatedDate;
                print(store.selectedDate);

                //?FORMATANDO ESTA DATA PARA PADRÃO COMUM DIA/MES/ANO
                String date =
                    DateFormat(kDateFormatPattern).format(notFormatedDate);

                //?FORMATANDO ESTA DATA PARA PADRÃO COMUM DIAMESANO PARA SER UTILIZADO COMO REFERENCE
                store.dateReference =
                    DateFormat('ddMMyyyy').format(notFormatedDate);

                store.getAvailableHourList(store.dateReference.toString());
              }
            },
          );
        },
      ),
    );
  }
}
