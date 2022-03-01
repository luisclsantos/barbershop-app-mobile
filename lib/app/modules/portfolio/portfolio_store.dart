import 'package:mobx/mobx.dart';

import '../../shared/models/portfolio_model.dart';
import '../../shared/interfaces/portfolio_interface.dart';

part 'portfolio_store.g.dart';

class PortfolioStore = _PortfolioStoreBase with _$PortfolioStore;

abstract class _PortfolioStoreBase with Store {
  final IPortfolioRepository repository;

  @observable
  ObservableStream<List<PortfolioModel>>? portfolioList;

  _PortfolioStoreBase(IPortfolioRepository this.repository) {
    getPortfolioList();
  }

  @action
  getPortfolioList() {
    portfolioList = repository.getPortfolio().asObservable();
  }
}
