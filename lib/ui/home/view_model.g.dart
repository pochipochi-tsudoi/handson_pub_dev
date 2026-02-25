// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeScreenViewModel)
final homeScreenViewModelProvider = HomeScreenViewModelProvider._();

final class HomeScreenViewModelProvider
    extends $NotifierProvider<HomeScreenViewModel, HomeScreenState> {
  HomeScreenViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeScreenViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeScreenViewModelHash();

  @$internal
  @override
  HomeScreenViewModel create() => HomeScreenViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeScreenState>(value),
    );
  }
}

String _$homeScreenViewModelHash() =>
    r'44f2b4878ac6c0afe0f9261a8e11a8180ae404fa';

abstract class _$HomeScreenViewModel extends $Notifier<HomeScreenState> {
  HomeScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<HomeScreenState, HomeScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomeScreenState, HomeScreenState>,
              HomeScreenState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
