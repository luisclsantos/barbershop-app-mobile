import '../models/book_model.dart';
import '../models/hour_model.dart';
import '../models/local_model.dart';
import '../models/professional_model.dart';

abstract class IBookRepository {
  Stream<List<BookModel>> getAvailableDates();
  Stream<List<HourModel>> getAvailableHours(String dateReference);
  Stream<List<LocalModel>> getAvailableLocations();
  Stream<List<ProfessionalModel>> getAvailableProfessionals();
}
