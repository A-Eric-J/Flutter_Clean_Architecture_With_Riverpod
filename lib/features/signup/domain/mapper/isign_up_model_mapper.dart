import 'package:flutter_clean_architecture_with_riverpod/features/signup/data/dto/response/sign_up_response.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/signup/domain/model/sign_up_model.dart';

abstract interface class ISignUpModelMapper {
  SignUpModel mapToSignUpModel(SignUpResponse data);
}
