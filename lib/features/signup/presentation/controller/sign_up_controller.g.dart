// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpController)
const signUpControllerProvider = SignUpControllerProvider._();

final class SignUpControllerProvider
    extends $NotifierProvider<SignUpController, SignUpState> {
  const SignUpControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signUpControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signUpControllerHash();

  @$internal
  @override
  SignUpController create() => SignUpController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignUpState>(value),
    );
  }
}

String _$signUpControllerHash() => r'27989232bd601c4d355f93676b3c56afcc8cc7e5';

abstract class _$SignUpController extends $Notifier<SignUpState> {
  SignUpState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SignUpState, SignUpState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<SignUpState, SignUpState>, SignUpState, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
