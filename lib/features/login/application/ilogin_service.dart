import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';

abstract interface class ILoginService {
  Future<bool> login(LoginRequest loginRequest);
}