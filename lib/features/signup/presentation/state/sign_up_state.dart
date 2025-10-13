import 'package:flutter_clean_architecture_with_riverpod/features/signup/domain/model/sign_up_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
sealed class SignUpState with _$SignUpState {
  factory SignUpState({
    SignUpModel? signUpModel,
    bool? isSignUpSuccess,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<String, dynamic> signUpform,
  }) = _SignUpState;
}
