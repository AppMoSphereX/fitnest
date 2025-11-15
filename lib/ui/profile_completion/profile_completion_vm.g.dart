// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_completion_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileCompletionVM)
const profileCompletionVMProvider = ProfileCompletionVMProvider._();

final class ProfileCompletionVMProvider
    extends $NotifierProvider<ProfileCompletionVM, ProfileCompletionState> {
  const ProfileCompletionVMProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileCompletionVMProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileCompletionVMHash();

  @$internal
  @override
  ProfileCompletionVM create() => ProfileCompletionVM();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileCompletionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileCompletionState>(value),
    );
  }
}

String _$profileCompletionVMHash() =>
    r'870eb5f01c3fbd53f15d3ea11c5deb4c70273007';

abstract class _$ProfileCompletionVM extends $Notifier<ProfileCompletionState> {
  ProfileCompletionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ProfileCompletionState, ProfileCompletionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileCompletionState, ProfileCompletionState>,
              ProfileCompletionState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
