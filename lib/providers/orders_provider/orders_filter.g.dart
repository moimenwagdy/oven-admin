// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_filter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrdersFilterNofifier)
const ordersFilterNofifierProvider = OrdersFilterNofifierProvider._();

final class OrdersFilterNofifierProvider
    extends $NotifierProvider<OrdersFilterNofifier, OrdersFilter> {
  const OrdersFilterNofifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersFilterNofifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersFilterNofifierHash();

  @$internal
  @override
  OrdersFilterNofifier create() => OrdersFilterNofifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrdersFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrdersFilter>(value),
    );
  }
}

String _$ordersFilterNofifierHash() =>
    r'a422937755a7eb1081e95371017564b59bd99345';

abstract class _$OrdersFilterNofifier extends $Notifier<OrdersFilter> {
  OrdersFilter build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrdersFilter, OrdersFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrdersFilter, OrdersFilter>,
              OrdersFilter,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
