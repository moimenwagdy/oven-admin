import 'package:oven_admin/widgets/orders_page_widgets/orders_page_period_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'orders_filter.g.dart';

@riverpod
class OrdersFilterNofifier extends _$OrdersFilterNofifier {
  @override
  OrdersFilter build() {
    return OrdersFilter();
  }

  void updateDateFilter(DateTime? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: value,
      status: current.status,
      fixedPeriod: null,
    );
  }

  void updateStatusFilter(String? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: current.dayDate,
      status: value,
      fixedPeriod: current.fixedPeriod,
    );
  }

  void updateFixedPeriodFilter(DatePeriod? value) {
    final current = state;
    state = OrdersFilter(
      dayDate: null,
      status: current.status,
      fixedPeriod: value,
    );
  }
}

class OrdersFilter {
  final DateTime? dayDate;
  final String? status;
  final DatePeriod? fixedPeriod;
  const OrdersFilter({this.dayDate, this.status, this.fixedPeriod});
}
