// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_category_filter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoriesFilter)
const categoriesFilterProvider = CategoriesFilterProvider._();

final class CategoriesFilterProvider
    extends $NotifierProvider<CategoriesFilter, String?> {
  const CategoriesFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesFilterHash();

  @$internal
  @override
  CategoriesFilter create() => CategoriesFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$categoriesFilterHash() => r'19ee14f3e208d5bd8b540e6b4db64579268371b9';

abstract class _$CategoriesFilter extends $Notifier<String?> {
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
