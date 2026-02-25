// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PackageNotifier)
final packageProvider = PackageNotifierProvider._();

final class PackageNotifierProvider
    extends $NotifierProvider<PackageNotifier, void> {
  PackageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'packageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$packageNotifierHash();

  @$internal
  @override
  PackageNotifier create() => PackageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$packageNotifierHash() => r'6d32ce4d6620dfd42c2012654ed431c5e41e00d3';

abstract class _$PackageNotifier extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
