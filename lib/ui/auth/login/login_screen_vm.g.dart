// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_screen_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginScreenVM)
const loginScreenVMProvider = LoginScreenVMProvider._();

final class LoginScreenVMProvider
    extends $NotifierProvider<LoginScreenVM, LoginScreenState> {
  const LoginScreenVMProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginScreenVMProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginScreenVMHash();

  @$internal
  @override
  LoginScreenVM create() => LoginScreenVM();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginScreenState>(value),
    );
  }
}

String _$loginScreenVMHash() => r'7b554a725a513cf81b2c44055b5a7d54b26faade';

abstract class _$LoginScreenVM extends $Notifier<LoginScreenState> {
  LoginScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoginScreenState, LoginScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginScreenState, LoginScreenState>,
              LoginScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
