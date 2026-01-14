// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditCategory)
const editCategoryProvider = EditCategoryProvider._();

final class EditCategoryProvider
    extends $NotifierProvider<EditCategory, Category?> {
  const EditCategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editCategoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editCategoryHash();

  @$internal
  @override
  EditCategory create() => EditCategory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Category? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Category?>(value),
    );
  }
}

String _$editCategoryHash() => r'38f3871bf24aba6b91c893fdaad55fc99ff6b372';

abstract class _$EditCategory extends $Notifier<Category?> {
  Category? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Category?, Category?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Category?, Category?>,
              Category?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
