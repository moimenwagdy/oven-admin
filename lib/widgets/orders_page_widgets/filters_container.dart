import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_day_date_Filter.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_period_filter.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_status_filter.dart';

class FiltersContainer extends StatelessWidget {
  const FiltersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrdersPageStatusFilter(),
        OrdersPageDayDateFilter(),
        OrdersPagePeriodFilter(),
      ],
    );
  }
}
