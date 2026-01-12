// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditProduct)
const editProductProvider = EditProductProvider._();

final class EditProductProvider
    extends $NotifierProvider<EditProduct, Product?> {
  const EditProductProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editProductProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editProductHash();

  @$internal
  @override
  EditProduct create() => EditProduct();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Product? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Product?>(value),
    );
  }
}

String _$editProductHash() => r'f1aad28aa3375ec1b95434102e276ec006860374';

abstract class _$EditProduct extends $Notifier<Product?> {
  Product? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Product?, Product?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Product?, Product?>,
              Product?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
