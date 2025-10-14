import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/response/login_response.dart';

abstract interface class ILoginRepository {

  Future<LoginResponse> login(LoginRequest loginRequest);
}