import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/types.dart';

part 'user_chatbot.freezed.dart';

part 'user_chatbot.g.dart';

@freezed
class UserChatBot with _$UserChatBot {
  factory UserChatBot({
    @JsonKey(name: 'creation_date')
    String? creationDate,
    @JsonKey(name: 'chatbot_id')
    required String chatbotId,
    @JsonKey(name: 'user_id')
    required String userId,
    required String name,
    String? description,
    @JsonKey(name: 'index_name')
    required String indexName,
    @JsonKey(name: 'total_questions')
    int? totalQuestions,
    @JsonKey(name: 'open_ai_api_key')
    required String openAiApiKey,
    @JsonKey(name: 'pinecone_api_key')
    required String pineconeApiKey,
    @JsonKey(name: 'pinecone_environment')
    required String pineconeEnvironment,
    @JsonKey(name: 'is_live')
    required bool isLive,
    @JsonKey(name: 'is_active')
    required bool isActive,
  }) = _UserChatBot;

  const UserChatBot._();

  factory UserChatBot.fromJson(Json json) => _$UserChatBotFromJson(json);
}
