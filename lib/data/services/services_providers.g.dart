// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authService)
const authServiceProvider = AuthServiceProvider._();

final class AuthServiceProvider
    extends $FunctionalProvider<AuthService, AuthService, AuthService>
    with $Provider<AuthService> {
  const AuthServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authServiceHash();

  @$internal
  @override
  $ProviderElement<AuthService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthService create(Ref ref) {
    return authService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthService>(value),
    );
  }
}

String _$authServiceHash() => r'ed0872794ec8e4cb3f50cb37b9c0b9467eb51ddb';

@ProviderFor(firestoreService)
const firestoreServiceProvider = FirestoreServiceProvider._();

final class FirestoreServiceProvider
    extends
        $FunctionalProvider<
          FirestoreService,
          FirestoreService,
          FirestoreService
        >
    with $Provider<FirestoreService> {
  const FirestoreServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firestoreServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firestoreServiceHash();

  @$internal
  @override
  $ProviderElement<FirestoreService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirestoreService create(Ref ref) {
    return firestoreService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirestoreService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirestoreService>(value),
    );
  }
}

String _$firestoreServiceHash() => r'ab6a4068fcce40bd3123cf65d2f4d942f392e605';
