import 'package:flutter_clean_architecture_with_riverpod/core/provider/auth_state_provider.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/presentation/state/login_state.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/application/login_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


// 1. Add this part directive at the top of your file
part 'login_controller.g.dart';

// 2. Annotate your class with @riverpod
@riverpod
class LoginController extends _$LoginController {

  @override
  LoginState build() {
    return LoginState();
  }

  /// Attempts to login the user with the email and password
  /// from the state.
  ///
  /// If the login is successful, the state is updated to
  /// [isLoading] = false and [isLoginSuccess] = true.
  ///
  /// If the login fails, the state is updated to
  /// [isLoading] = false and [error] = the error message.
  ///
  /// The login request is created from the [email] and [password]
  /// fields of the state.
  ///
  /// The login response is the result of calling
  /// [loginService.login] with the login request.
  Future<void> login() async {

    try {
      // update the state - isLoading = true and error = null
      state = state.copyWith(isLoading: true, error: null);

      // setup the login request - email and password from the form
      final loginRequest = LoginRequest(
        email: state.loginForm['email'],
        password: state.loginForm['password'],
      );

      // call login api
      final response = await ref.read(loginServiceProvider).login(loginRequest);

      // update the auth state
      ref.invalidate(authStateProvider);
      ref.read(authStateProvider.notifier).setAuthState(response);

      // update the state - isLoading = false and isLoginSuccess = response
      state = state.copyWith(isLoading: false, isLoginSuccess: response);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());

    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }

}