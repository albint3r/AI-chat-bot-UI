import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/dashboard/i_dashboard_data_source.dart';

@Injectable(as: IDashBoardDataSource)
class DashboardDataSourceImpl implements IDashBoardDataSource {
  DashboardDataSourceImpl(this._dio);

  final Dio _dio;

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
