// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupUsecase)
const signupUsecaseProvider = SignupUsecaseProvider._();

final class SignupUsecaseProvider
    extends $FunctionalProvider<SignupUsecase, SignupUsecase, SignupUsecase>
    with $Provider<SignupUsecase> {
  const SignupUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupUsecaseHash();

  @$internal
  @override
  $ProviderElement<SignupUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignupUsecase create(Ref ref) {
    return signupUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupUsecase>(value),
    );
  }
}

String _$signupUsecaseHash() => r'f76b5bb70156e80ed56aa4dd2d79638d0ec7a6e9';
