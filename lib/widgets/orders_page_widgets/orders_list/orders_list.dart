import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/filtered_orders.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_item_content.dart';

class OrdersList extends ConsumerWidget {
  const OrdersList({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final ordersSrc = ref.watch(filteredOrdersProvider);
    return ordersSrc.when(
      data: ((data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return OrderItemContent(order: item);
          },
        );
      }),
      error: (error, stackTrace) {
        return Text("data");
      },
      loading: () => SizedBox(
        width: 40,
        height: 40,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
