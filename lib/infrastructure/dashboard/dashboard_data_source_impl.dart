import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

import '../../domain/core/types.dart';
import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/user_chatbot.dart';

@Injectable(as: IDashBoardDataSource)
class DashboardDataSourceImpl implements IDashBoardDataSource {
  DashboardDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> createNewIndexFromCsv(
    Uint8List fileBytes,
    Map<String, String> queryParams,
  ) async {
    final uri = Uri.parse('/data-manager/v1/upload-file/csv/').replace(
      queryParameters: queryParams,
    );
    try {
      final response = await _dio.post(
        uri.toString(),
        data: FormData.fromMap({
          'file': MultipartFile.fromBytes(
            fileBytes,
            filename: 'QA-file.csv',
          ),
        }),
      );
      l.i('Respuesta del servidor: ${response.data}');
    } catch (e) {
      l.i('Error al subir el archivo: $e');
    }
  }

  @override
  Future<List<UserChatBot>> getUserChatBots() async {
    const path = "/data-manager/v1/user/chat-bots/";
    final response = await _dio.get(path);
    final data = response.data as List<dynamic>;
    final results =
        data.map((chat) => UserChatBot.fromJson(chat as Json)).toList();
    if (results.isNotEmpty) {
      return results;
    }
    return <UserChatBot>[];
  }

  @override
  Future<void> updateChatBotActiveStatus(
    bool isActive,
    String chatBotId,
  ) async {
    const path = '/data-manager/v1/user/chat-bots/active/';
    final response = await _dio.put(
      path,
      data: {
        "chatbot_id": chatBotId,
        "is_active": isActive,
      },
    );
    if (response.statusCode != 200) {
      throw Exception('Fatal Error With the Update Activity State.');
    }
  }

  @override
  Future<void> deleteUserChatBot(UserChatBot userChatBot) async {
    const path = "/data-manager/v1/delete/chatbot";
    final response = await _dio.delete(
      path,
      data: {
        "chatbot_id": userChatBot.chatbotId,
        "index_name": userChatBot.indexName,
        "pinecone_api_key": userChatBot.pineconeApiKey,
        "pinecone_environment": userChatBot.pineconeEnvironment,
      },
    );
    if (response.statusCode != 200) {
      throw Exception('Error Deleting the user ChatBot');
    }
  }
}
