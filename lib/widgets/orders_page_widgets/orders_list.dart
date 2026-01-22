import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/widgets/orders_page_widgets/order_item_content.dart';

class OrdersList extends ConsumerWidget {
  const OrdersList({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final ordersSrc = ref.watch(ordersProvider);
    // final filter = ref.watch(ordersFilterNofifierProvider);

    return ordersSrc.when(
      data: ((data) {
        return ListView.separated(
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return SizedBox(height: 5);
          },
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
