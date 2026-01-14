// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_list_filter_by_category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductsListFilterByCategory)
const productsListFilterByCategoryProvider =
    ProductsListFilterByCategoryProvider._();

final class ProductsListFilterByCategoryProvider
    extends $NotifierProvider<ProductsListFilterByCategory, String?> {
  const ProductsListFilterByCategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsListFilterByCategoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsListFilterByCategoryHash();

  @$internal
  @override
  ProductsListFilterByCategory create() => ProductsListFilterByCategory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$productsListFilterByCategoryHash() =>
    r'402f5d9901de9e82f337e2d64d9b7f64bbfefc20';

abstract class _$ProductsListFilterByCategory extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
