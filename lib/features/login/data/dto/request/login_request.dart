

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
sealed class LoginRequest with _$LoginRequest {

  factory LoginRequest({
    /// These JsonKeys should be here while generating so the generated files have these anotations
    // @JsonKey(name: 'email')
    required String email,
    // @JsonKey(name: 'password')
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}