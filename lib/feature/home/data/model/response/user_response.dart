import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  UserResponse(this.userId, this.id, this.title, this.completed);

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
