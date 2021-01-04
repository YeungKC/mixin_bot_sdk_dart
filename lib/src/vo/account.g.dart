// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    userId: json['user_id'] as String,
    identityNumber: json['identity_number'] as String,
    phone: json['phone'] as String,
    fullName: json['full_name'] as String,
    biography: json['biography'] as String,
    avatarUrl: json['avatar_url'] as String,
    relationship: json['relationship'] as String,
    muteUntil: json['mute_until'] as String,
    createdAt: json['created_at'] as String,
    isVerified: json['is_verified'] as bool,
    isScam: json['is_scam'] as bool,
    sessionId: json['session_id'] as String,
    pinToken: json['pin_token'] as String,
    pinTokenBase64: json['pin_token_base64'] as String,
    codeId: json['code_id'] as String,
    codeUrl: json['code_url'] as String,
    deviceStatus: json['device_status'] as String,
    hasPin: json['has_pin'] as bool,
    hasEmergencyContact: json['has_emergency_contact'] as bool,
    receiveMessageSource: json['receive_message_source'] as String,
    acceptConversationSource: json['accept_conversation_source'] as String,
    acceptSearchSource: json['accept_search_source'] as String,
    fiatCurrency: json['fiat_currency'] as String,
    transferNotificationThreshold:
        json['transfer_notification_threshold'] as int,
    transferConfirmationThreshold:
        json['transfer_confirmation_threshold'] as int,
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'user_id': instance.userId,
      'identity_number': instance.identityNumber,
      'phone': instance.phone,
      'full_name': instance.fullName,
      'biography': instance.biography,
      'avatar_url': instance.avatarUrl,
      'relationship': instance.relationship,
      'mute_until': instance.muteUntil,
      'created_at': instance.createdAt,
      'is_verified': instance.isVerified,
      'is_scam': instance.isScam,
      'session_id': instance.sessionId,
      'pin_token': instance.pinToken,
      'pin_token_base64': instance.pinTokenBase64,
      'code_id': instance.codeId,
      'code_url': instance.codeUrl,
      'device_status': instance.deviceStatus,
      'has_pin': instance.hasPin,
      'has_emergency_contact': instance.hasEmergencyContact,
      'receive_message_source': instance.receiveMessageSource,
      'accept_conversation_source': instance.acceptConversationSource,
      'accept_search_source': instance.acceptSearchSource,
      'fiat_currency': instance.fiatCurrency,
      'transfer_notification_threshold': instance.transferNotificationThreshold,
      'transfer_confirmation_threshold': instance.transferConfirmationThreshold,
    };