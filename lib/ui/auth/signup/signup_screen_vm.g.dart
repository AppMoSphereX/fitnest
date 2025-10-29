// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_screen_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignupScreenVM)
const signupScreenVMProvider = SignupScreenVMProvider._();

final class SignupScreenVMProvider
    extends $NotifierProvider<SignupScreenVM, SignupScreenState> {
  const SignupScreenVMProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signupScreenVMProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signupScreenVMHash();

  @$internal
  @override
  SignupScreenVM create() => SignupScreenVM();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupScreenState>(value),
    );
  }
}

String _$signupScreenVMHash() => r'27473c92ce0f4a248ac8a08c7b5ce5a7831fa5a3';

abstract class _$SignupScreenVM extends $Notifier<SignupScreenState> {
  SignupScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SignupScreenState, SignupScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SignupScreenState, SignupScreenState>,
              SignupScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
