// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authStateNotifier)
const authStateProvider = AuthStateNotifierProvider._();

final class AuthStateNotifierProvider
    extends
        $FunctionalProvider<
          AuthStateNotifier,
          AuthStateNotifier,
          AuthStateNotifier
        >
    with $Provider<AuthStateNotifier> {
  const AuthStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStateNotifierHash();

  @$internal
  @override
  $ProviderElement<AuthStateNotifier> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthStateNotifier create(Ref ref) {
    return authStateNotifier(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthStateNotifier value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthStateNotifier>(value),
    );
  }
}

String _$authStateNotifierHash() => r'7e99eb238dd77b6a06a48fe62c5500d6a0e978e7';
