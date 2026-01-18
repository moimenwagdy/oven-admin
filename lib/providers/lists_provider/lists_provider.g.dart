// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListsNotifier)
const listsProvider = ListsNotifierProvider._();

final class ListsNotifierProvider
    extends $AsyncNotifierProvider<ListsNotifier, List<ProductsList>> {
  const ListsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listsNotifierHash();

  @$internal
  @override
  ListsNotifier create() => ListsNotifier();
}

String _$listsNotifierHash() => r'9cbc237a895108ea423c580f4a0735ac98705649';

abstract class _$ListsNotifier extends $AsyncNotifier<List<ProductsList>> {
  FutureOr<List<ProductsList>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ProductsList>>, List<ProductsList>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ProductsList>>, List<ProductsList>>,
              AsyncValue<List<ProductsList>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
