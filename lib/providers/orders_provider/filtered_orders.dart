// import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/orders_page_period_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'orders_filter.dart';
import 'orders_provider.dart';
part 'filtered_orders.g.dart';

@riverpod
AsyncValue<List<OrderItem>> filteredOrders(ref) {
  final AsyncValue<List<OrderItem>> ordersAsync = ref.watch(ordersProvider);
  final OrdersFilter filter = ref.watch(ordersFilterNofifierProvider);
  final hasStatus = filter.status != null;
  final hasRange = filter.range?.to != null;
  final hasFixedPeriod = filter.fixedPeriod != null;
  final hasDayDate = filter.dayDate != null;

  return ordersAsync.whenData((List<OrderItem> orders) {
   
    /// status filter only
    if (hasStatus && !hasDayDate && !hasFixedPeriod && !hasRange) {
      return orders.where((ele) {
        return ele.status == filter.status;
      }).toList();
    }

    // dayDate filter only
    if (hasDayDate && !hasStatus) {
      return orders.where((ele) {
        return _isSameDay(ele.createdAt, filter.dayDate!);
      }).toList();
    }
    // fixed period filter only
    if (hasFixedPeriod && !hasStatus) {
      return orders.where((ele) {
        return ele.createdAt.isAfter(filter.fixedPeriod!.from) &&
            ele.createdAt.isBefore(filter.fixedPeriod!.to);
      }).toList();
    }

    // fixed period filter + status
    if (hasFixedPeriod && hasStatus) {
      return orders.where((ele) {
        return ele.createdAt.isAfter(filter.fixedPeriod!.from) &&
            ele.createdAt.isBefore(filter.fixedPeriod!.to) &&
            ele.status == filter.status;
      }).toList();
    }
    // range filter only
    if (hasRange && !hasStatus) {
      return orders.where((ele) {
        return ele.createdAt.isAfter(filter.range!.from!) &&
            ele.createdAt.isBefore(filter.range!.to!);
      }).toList();
    }
    //range filter + status
    if (hasRange && hasStatus) {
      return orders.where((ele) {
        return ele.createdAt.isAfter(filter.range!.from!) &&
            ele.createdAt.isBefore(filter.range!.to!) &&
            ele.status == filter.status;
      }).toList();
    }
    // dayDate filter + status
    if (hasStatus && hasDayDate) {
      return orders.where((ele) {
        return ele.status == filter.status &&
            _isSameDay(ele.createdAt, filter.dayDate!);
      }).toList();
    }
    return orders.toList();
  });
}

bool _isSameDay(DateTime a, DateTime b) {
  return a.year == b.year && a.month == b.month && a.day == b.day;
}
