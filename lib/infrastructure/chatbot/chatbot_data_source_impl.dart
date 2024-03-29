import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../domain/chatbot/answer.dart';
import '../../domain/chatbot/i_chatbot_data_source.dart';
import '../../domain/core/app_error.dart';
import '../../domain/core/types.dart';
import '../../domain/dashboard/user_chatbot.dart';

@Injectable(as: IChatBotDataSource)
class ChatBotDataSourceImpl implements IChatBotDataSource {
  ChatBotDataSourceImpl(
    this._dio,
    this._webSocketUri,
  );

  final Dio _dio;
  final Uri _webSocketUri;

  @override
  Future<Answer> postQuestionQA(
    String question,
    String chatId,
  ) async {
    final response = await _dio.post(
      '/chatbot/v1/qa-chatbot/$chatId',
      data: {
        'text': question,
      },
    );
    final data = response.data as Json;
    return Answer.fromJson(data);
  }

  @override
  WebSocketChannel connectToChatAgentWebSocket(String chatId) {
    // User Replace to add the query parameters
    final uri = _webSocketUri.replace(
      queryParameters: {
        'chat_id': chatId,
      },
    );
    return WebSocketChannel.connect(uri);
  }

  @override
  Future<(AppError?, UserChatBot?)> existChatBotInfo(String chatId) async {
    try {
      final response = await _dio.post("/chatbot/v1/chatbots/$chatId");
      final data = response.data as Json;
      return (null, UserChatBot.fromJson(data));
    } catch (e) {
      return (
        const AppError(errorType: ErrorType.NotFound, errorMsg: 'Error 404'),
        null
      );
    }
  }
}
