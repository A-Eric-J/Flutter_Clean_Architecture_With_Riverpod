import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';

part 'sign_up_response.g.dart';

@freezed
sealed class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required String status,
    required Data data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    required User user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    required String role,
    required String authType,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
