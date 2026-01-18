// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditList)
const editListProvider = EditListProvider._();

final class EditListProvider
    extends $NotifierProvider<EditList, ProductsList?> {
  const EditListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editListHash();

  @$internal
  @override
  EditList create() => EditList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsList? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsList?>(value),
    );
  }
}

String _$editListHash() => r'63705cef01d674db142c13221fee9ef1366b5d9d';

abstract class _$EditList extends $Notifier<ProductsList?> {
  ProductsList? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ProductsList?, ProductsList?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductsList?, ProductsList?>,
              ProductsList?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
