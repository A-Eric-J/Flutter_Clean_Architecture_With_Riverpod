

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/data/remote/endpoint.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/request/login_request.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/data/dto/response/login_response.dart';
import 'package:retrofit/retrofit.dart';


part 'login_api.g.dart';

@RestApi()
abstract class  LoginApi {
  factory LoginApi(Dio dio) => _LoginApi(dio);

  @POST(loginEndPoint)
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

}