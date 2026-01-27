import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/orders_page_range_filter.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/orders_page_period_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'orders_filter.g.dart';

@Riverpod(keepAlive: true)
class OrdersFilterNofifier extends _$OrdersFilterNofifier {
  @override
  OrdersFilter build() {
    return OrdersFilter(
      dayDate: DateTime.now(),
      fixedPeriod: null,
      range: null,
      status: null,
    );
  }

  void updateDayDateFilter(DateTime? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: value,
      status: current.status,
      range: null,
      fixedPeriod: null,
    );
  }

  void updateStatusFilter(String? value) {
    final current = state;
    state = OrdersFilter(
      range: current.range,
      dayDate: current.dayDate,
      status: value,
      fixedPeriod: current.fixedPeriod,
    );
  }

  void updateFixedPeriodFilter(DatePeriod? value) {
    final current = state;
    state = OrdersFilter(
      range: null,
      dayDate: null,
      status: current.status,
      fixedPeriod: value,
    );
  }

  void updateFromRangeFilter(DateTime? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: null,
      fixedPeriod: null,
      range: DateRange(value, current.range?.to),
      status: current.status,
    );
  }

  void updateToRangeFilter(DateTime? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: null,
      fixedPeriod: null,
      range: DateRange(current.range?.from, value),
      status: current.status,
    );
  }
}

class OrdersFilter {
  final DateTime? dayDate;
  final String? status;
  final DatePeriod? fixedPeriod;
  final DateRange? range;
  const OrdersFilter({this.dayDate, this.status, this.fixedPeriod, this.range});
}
