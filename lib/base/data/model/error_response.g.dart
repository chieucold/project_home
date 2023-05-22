// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      statusCode: json['statusCode'] as int,
      data: json['data'] == null
          ? null
          : ErrorData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
    };

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) => ErrorData(
      showPopup: json['showPopup'] as bool?,
      forceLogout: json['forceLogout'] as bool?,
    );

Map<String, dynamic> _$ErrorDataToJson(ErrorData instance) => <String, dynamic>{
      'showPopup': instance.showPopup,
      'forceLogout': instance.forceLogout,
    };
