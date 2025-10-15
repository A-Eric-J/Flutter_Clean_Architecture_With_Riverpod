// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_up_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(startUp)
const startUpProvider = StartUpProvider._();

final class StartUpProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const StartUpProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'startUpProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$startUpHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return startUp(ref);
  }
}

String _$startUpHash() => r'e47e9acb7e3da44a0e3e7111b77bcc076e2d3bf8';
