import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  int statusCode;
  ErrorData? data;
  String message;

  ErrorResponse({required this.statusCode, this.data, required this.message});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

@JsonSerializable()
class ErrorData {
  bool? showPopup;
  bool? forceLogout;

  ErrorData({this.showPopup, this.forceLogout});

  factory ErrorData.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataFromJson(json);
}
