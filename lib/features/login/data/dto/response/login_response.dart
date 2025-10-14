import 'package:freezed_annotation/freezed_annotation.dart';
/// use https://app.quicktype.io/ to create the dtos and make sure to choose dart language and thick Null Safety and Put encoder & decoder in Class and make sure
/// in the other part of it Generate class definitions with @freezed compatibility is checked and make the classes sealed for supporting for new version of freezed_annotation

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
sealed class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    // @JsonKey(name: "status")
    required String status,
    // @JsonKey(name: "data")
    required LoginData data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

@freezed
sealed class LoginData with _$LoginData {
  const factory LoginData({
    // @JsonKey(name: "accessToken")
    required String accessToken,
    // @JsonKey(name: "refreshToken")
    required String refreshToken,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);
}
