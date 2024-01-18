import 'package:injectable/injectable.dart';

import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/i_dashboard_facade.dart';

@Injectable(as: IDashBoardFacade)
class DashboardFacadeImpl implements IDashBoardFacade {
  DashboardFacadeImpl(this._dataSource);

  final IDashBoardDataSource _dataSource;

  @override
  Future<void> createNewIndexFromCsv() {
    // TODO: implement createNewIndexFromCsv
    throw UnimplementedError();
  }

  @override
  Future<void> getUserChatBots() {
    // TODO: implement getUserChatBots
    throw UnimplementedError();
  }
}
