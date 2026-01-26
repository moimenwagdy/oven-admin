import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/filters_container.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_table_header.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FiltersContainer(),
        OrdersTableHeader(),
        Expanded(child: OrdersList()),
      ],
    );
  }
}
