import 'package:barbershops/app/shared/interfaces/book_interface.dart';
import 'package:barbershops/app/shared/models/book_model.dart';
import 'package:barbershops/app/shared/models/hour_model.dart';
import 'package:barbershops/app/shared/models/local_model.dart';
import 'package:barbershops/app/shared/models/professional_model.dart';
import 'package:mobx/mobx.dart';

part 'book_store.g.dart';

class BookStore = _BookStoreBase with _$BookStore;

abstract class _BookStoreBase with Store {
  final IBookRepository repository;

  @observable
  ObservableStream<List<BookModel>>? availableDatesList;

  @observable
  ObservableStream<List<HourModel>>? availableHourList;

  @observable
  ObservableStream<List<LocalModel>>? availableLocationList;

  @observable
  ObservableStream<List<ProfessionalModel>>? availableProfessionalList;

  @observable
  String? dateReference;

  @observable
  DateTime? selectedDate;

  @observable
  String? selectedHour;

  @observable
  String? selectedLocal;

  @observable
  String? selectedProfessional;

  _BookStoreBase(IBookRepository this.repository) {
    getAvailableDatesList();
    getAvailableHourList('initialValue');
    getAvailableLocations();
    getAvailableProfessionals();
  }

  @action
  getAvailableDatesList() {
    availableDatesList = repository.getAvailableDates().asObservable();
  }

  @action
  getAvailableHourList(String dateReference) {
    availableHourList =
        repository.getAvailableHours(dateReference).asObservable();
  }

  @action
  getAvailableLocations() {
    availableLocationList = repository.getAvailableLocations().asObservable();
  }

  @action
  getAvailableProfessionals() {
    availableProfessionalList =
        repository.getAvailableProfessionals().asObservable();
  }

  //?BLOQUEIA APENAS OS DIAS QUE NAO ESTIVEREM COM AGENDA ABERTA
  @action
  List<DateTime> getBlackoutDates() {
    if (availableDatesList!.hasError) {
      final List<DateTime> dates = <DateTime>[];
      return dates;
    } else if (availableDatesList!.data == null) {
      final List<DateTime> dates = <DateTime>[];
      return dates;
    } else {
      //?GET NA LISTA DE DADOS DE DATAS DISPONÍVEIS
      final List<BookModel> availableDatesBookModel = availableDatesList!.data;

      //?TRANSFORMANDO O MAP DE DATAS DISPONÍVEIS EM UMA LISTA
      final List<DateTime?> availableDates = availableDatesBookModel.map((doc) {
        return doc.date;
      }).toList();

      //?ARRAY VAZIO QUE SERÁ POPULADO COM APROXIMADAMENTE 1000 DIAS
      //?OU 735 DIAS (SOMANDO 500 PRA TRÁS+500 PRA FRENTE-DOMINGOS-SEGUNDAS)
      final List<DateTime> dates = <DateTime>[];

      //?DATA DE INICIO DA CONTAGEM
      final DateTime startCompleteDate =
          DateTime.now().subtract(const Duration(days: 500));
      //!REMOVENDO HORAS, MINUTOS E SEGUNDOS PARA A COMPARACAO A SER REALIZADA POSTERIORMENTE EM (#1)
      final DateTime startDate = DateTime(startCompleteDate.year,
          startCompleteDate.month, startCompleteDate.day);

      //?DATA DE FIM DA CONTAGEM
      final DateTime endDate = DateTime.now().add(const Duration(days: 500));

      //?POPULANDO O ARRAY DESCONSIDERANDO DOMINGOS E SEGUNDAS
      for (DateTime date = startDate;
          date.isBefore(endDate);
          date = date.add(const Duration(days: 1))) {
        if (date.weekday != DateTime.sunday &&
            date.weekday != DateTime.monday) {
          dates.add(date);
        }
      }

      //?POPULANDO O ARRAY
      //!IMPORTANTE LEMBRAR QUE SE OPTAR PELO USO DESTA CONFIGURAÇÃO,
      //!DEVE-SE EXCLUIR A OPÇÃO DE "selectableDayPredicate: _selectableDayPredicateDates,"
      //!AO QUAL CONSIDERA A EXCLUSÃO DE SELAÇÃO DE DOMINGOS E SEGUNDAS
      /*for (DateTime date = startDate;
          date.isBefore(endDate);
          date = date.add(const Duration(days: 1))) {
        dates.add(date);
      }*/

      //?REMOVENDO OS DIAS COM AGENDA ABERTA DO BLOQUEIO
      //!(#1) COMPARACAO ENTRE DATAS POPULADAS NO ARRAY DO CALENDARIO E
      //!AS DATAS DO ARRAY RECEBIDO DO FIRESTORE (DATAS DISPONIBILIZADAS PARA AGENDAMENTO PELO ADMIN)
      for (var i = 0; i < availableDates.length; i++) {
        for (var j = 0; j < dates.length; j++) {
          if (availableDates[i] == dates[j]) {
            dates.remove(dates[j]);
          }
        }
      }

      return dates;
    }
  }

  //?BLOQUEAR DIAS ESPECIFICOS
  @action
  bool selectableDayPredicateDates(DateTime date) {
    //? DIAS DA SEMANA, POR EXEMPLO DOMINGO E SEGUNDA-FEIRA
    if (date.weekday == DateTime.sunday || date.weekday == DateTime.monday) {
      return false;
    }

    return true;
  }
}
