import 'package:barbershops/app/shared/models/portfolio_model.dart';
import 'package:barbershops/app/shared/interfaces/portfolio_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PortfolioRepository implements IPortfolioRepository {
  final FirebaseFirestore firestore;

  PortfolioRepository(this.firestore);

  @override
  Stream<List<PortfolioModel>> getPortfolio() {
    final Stream<QuerySnapshot> portfolioStream = firestore
        .collection("portfolio")
        .orderBy('title', descending: true)
        .snapshots();

    var portifolio = portfolioStream.map((query) {
      return query.docs.map((doc) {
        return PortfolioModel.fromDocument(doc);
      }).toList();
    });

    return portifolio;
  }
}
