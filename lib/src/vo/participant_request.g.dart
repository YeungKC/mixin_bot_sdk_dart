// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipantRequest _$ParticipantRequestFromJson(Map<String, dynamic> json) {
  return ParticipantRequest(
    userId: json['user_id'] as String,
    role: json['role'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$ParticipantRequestToJson(ParticipantRequest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'role': instance.role,
      'created_at': instance.createdAt,
    };
