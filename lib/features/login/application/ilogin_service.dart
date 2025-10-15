import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';

abstract interface class ILoginService {
  Future<Result<bool, Failure>> login(LoginRequest loginRequest);
}