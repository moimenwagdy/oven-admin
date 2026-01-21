// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrdersNotifier)
const ordersProvider = OrdersNotifierProvider._();

final class OrdersNotifierProvider
    extends $AsyncNotifierProvider<OrdersNotifier, List<OrderItem>> {
  const OrdersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersNotifierHash();

  @$internal
  @override
  OrdersNotifier create() => OrdersNotifier();
}

String _$ordersNotifierHash() => r'f0a3e095fb08198dde460c7882d0b12da9190c44';

abstract class _$OrdersNotifier extends $AsyncNotifier<List<OrderItem>> {
  FutureOr<List<OrderItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<OrderItem>>, List<OrderItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<OrderItem>>, List<OrderItem>>,
              AsyncValue<List<OrderItem>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
