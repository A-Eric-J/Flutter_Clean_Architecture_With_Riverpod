import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/mixin/dio_exception_mapper.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/dto/response/sign_up_response.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/repository/isign_up_repository.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/source/remote/sign_up_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpRepositoryProvider = Provider.autoDispose<ISignUpRepository>((ref) {
  final signUpApi = ref.watch(signUpApiProvider);

  return SignUpRepository(signUpApi);
});


final class SignUpRepository with DioExceptionMapper implements ISignUpRepository {
  final SignUpApi _signUpApi;

  SignUpRepository(this._signUpApi);

  @override
  Future<SignUpResponse> signUp(SignUpRequest data) async {
    try {
      final response = await _signUpApi.signUp(data);

      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message: "An unexpected error occurred. Please try again later"
            .hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}