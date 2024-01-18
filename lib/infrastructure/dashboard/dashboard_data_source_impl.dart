import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/types.dart';
import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/user_chatbot.dart';

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
  Future<List<UserChatBot>> getUserChatBots() async {
    const path = "/data-manager/v1/upload-file/csv/";
    final response = await _dio.get(path);
    final data = response.data as List<dynamic>;
    final results =
        data.map((chat) => UserChatBot.fromJson(chat as Json)).toList();
    if (results.isNotEmpty) {
      return results;
    }
    throw Exception('No fetched user chat bots.');
  }
}
