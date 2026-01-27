import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/edit_order_provider.dart';
import 'package:oven_admin/widgets/orders_page_widgets/edit_order_form/order_form_container.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_page_filters/filters_container.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/orders_list.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/orders_table_header.dart';

class OrdersPage extends ConsumerWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final editOrder = ref.watch(editOrderProvider);

    return editOrder != null
        ? OrderFormContainer()
        : Column(
            children: [
              FiltersContainer(),
              OrdersTableHeader(),
              Expanded(child: OrdersList()),
            ],
          );
  }
}
