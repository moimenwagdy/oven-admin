// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_order_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditOrderNotifier)
const editOrderProvider = EditOrderNotifierProvider._();

final class EditOrderNotifierProvider
    extends $NotifierProvider<EditOrderNotifier, OrderItem?> {
  const EditOrderNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editOrderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editOrderNotifierHash();

  @$internal
  @override
  EditOrderNotifier create() => EditOrderNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrderItem? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrderItem?>(value),
    );
  }
}

String _$editOrderNotifierHash() => r'99f5867e0ff28a532a56cfbcc5009075401a733d';

abstract class _$EditOrderNotifier extends $Notifier<OrderItem?> {
  OrderItem? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrderItem?, OrderItem?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrderItem?, OrderItem?>,
              OrderItem?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
