// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_orders.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filteredOrders)
const filteredOrdersProvider = FilteredOrdersProvider._();

final class FilteredOrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OrderItem>>,
          AsyncValue<List<OrderItem>>,
          AsyncValue<List<OrderItem>>
        >
    with $Provider<AsyncValue<List<OrderItem>>> {
  const FilteredOrdersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredOrdersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredOrdersHash();

  @$internal
  @override
  $ProviderElement<AsyncValue<List<OrderItem>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AsyncValue<List<OrderItem>> create(Ref ref) {
    return filteredOrders(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<OrderItem>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<OrderItem>>>(value),
    );
  }
}

String _$filteredOrdersHash() => r'547ee49e3b81a922f9b3ae0ba1669af291b04d0a';
