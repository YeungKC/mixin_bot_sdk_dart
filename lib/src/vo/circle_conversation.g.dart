// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CircleConversation _$CircleConversationFromJson(Map<String, dynamic> json) {
  return CircleConversation(
    conversationId: json['conversationd_id'] as String,
    circleId: json['circle_id'] as String,
    userId: json['user_id'] as String,
    createdAt: json['created_at'] as String,
    pinTime: json['pinTime'] as String,
  );
}

Map<String, dynamic> _$CircleConversationToJson(CircleConversation instance) =>
    <String, dynamic>{
      'conversationd_id': instance.conversationId,
      'circle_id': instance.circleId,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'pinTime': instance.pinTime,
    };
