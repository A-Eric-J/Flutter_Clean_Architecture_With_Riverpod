import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';

/// after creating the base file call flutter pub run build_runner build --delete-conflicting-outputs to create the related files
@freezed
sealed class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse({
    required String status,
    required Data data,
  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, Object?> json) =>
      _$RefreshTokenResponseFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    required String accessToken,
    required String refreshToken,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
