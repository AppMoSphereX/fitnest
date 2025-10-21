// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeScreenVM)
const homeScreenVMProvider = HomeScreenVMProvider._();

final class HomeScreenVMProvider extends $NotifierProvider<HomeScreenVM, void> {
  const HomeScreenVMProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeScreenVMProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeScreenVMHash();

  @$internal
  @override
  HomeScreenVM create() => HomeScreenVM();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$homeScreenVMHash() => r'571d8e6dd5bbb5b88cb490011480a30254eac866';

abstract class _$HomeScreenVM extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
