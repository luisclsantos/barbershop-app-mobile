import 'package:barbershops/app/shared/models/portfolio_model.dart';

abstract class IPortfolioRepository {
  Stream<List<PortfolioModel>> getPortfolio();
}
