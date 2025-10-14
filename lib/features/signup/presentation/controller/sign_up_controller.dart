import 'package:flutter_clean_architecture_with_riverpod/features/signup/application/sign_up_service.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/presentation/state/sign_up_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


// 1. Add this part directive at the top of your file
part 'sign_up_controller.g.dart';

// 2. Annotate your class with @riverpod
@riverpod
class SignUpController extends _$SignUpController {
  @override
  SignUpState build() {
    return SignUpState();
  }

  Future<void> signUp() async {

    try {

      state = state.copyWith(
        isLoading: true,
        error: null,
        isSignUpSuccess: null,
      );

      final formData = SignUpRequest(
        name: state.signUpform['name'],
        email: state.signUpform['email'],
        password: state.signUpform['password'],
        passwordConfirm: state.signUpform['passwordConfirm'],
      );

      final result = await ref.read(signUpServiceProvider).signUp(formData);

      state = state.copyWith(
        isLoading: false,
        isSignUpSuccess: result.isSignUpSuccess,
        signUpModel: result,
      );

    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        isSignUpSuccess: null,
        error: e.toString(),
      );
    }

  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(
      signUpform: formData,
    );
  }

}
