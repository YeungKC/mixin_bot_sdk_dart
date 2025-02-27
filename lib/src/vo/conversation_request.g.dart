// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationRequest _$ConversationRequestFromJson(Map<String, dynamic> json) {
  return ConversationRequest(
    conversationId: json['conversation_id'] as String,
    category: json['category'] as String,
    name: json['name'] as String,
    iconBase64: json['icon_base64'] as String,
    announcement: json['announcement'] as String,
    participants: (json['participants'] as List)
        ?.map((e) => e == null
            ? null
            : ParticipantRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$ConversationRequestToJson(
        ConversationRequest instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'category': instance.category,
      'name': instance.name,
      'icon_base64': instance.iconBase64,
      'announcement': instance.announcement,
      'participants': instance.participants,
      'duration': instance.duration,
    };
