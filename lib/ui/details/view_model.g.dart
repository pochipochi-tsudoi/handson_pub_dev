// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DetailsScreenViewModel)
final detailsScreenViewModelProvider = DetailsScreenViewModelFamily._();

final class DetailsScreenViewModelProvider
    extends $AsyncNotifierProvider<DetailsScreenViewModel, DetailsScreenState> {
  DetailsScreenViewModelProvider._({
    required DetailsScreenViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'detailsScreenViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$detailsScreenViewModelHash();

  @override
  String toString() {
    return r'detailsScreenViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DetailsScreenViewModel create() => DetailsScreenViewModel();

  @override
  bool operator ==(Object other) {
    return other is DetailsScreenViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$detailsScreenViewModelHash() =>
    r'1f74f4983b0fb0149bb1a5dc248433ce21a1910a';

final class DetailsScreenViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          DetailsScreenViewModel,
          AsyncValue<DetailsScreenState>,
          DetailsScreenState,
          FutureOr<DetailsScreenState>,
          String
        > {
  DetailsScreenViewModelFamily._()
    : super(
        retry: null,
        name: r'detailsScreenViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DetailsScreenViewModelProvider call(String name) =>
      DetailsScreenViewModelProvider._(argument: name, from: this);

  @override
  String toString() => r'detailsScreenViewModelProvider';
}

abstract class _$DetailsScreenViewModel
    extends $AsyncNotifier<DetailsScreenState> {
  late final _$args = ref.$arg as String;
  String get name => _$args;

  FutureOr<DetailsScreenState> build(String name);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<DetailsScreenState>, DetailsScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DetailsScreenState>, DetailsScreenState>,
              AsyncValue<DetailsScreenState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
