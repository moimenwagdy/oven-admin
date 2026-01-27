import 'package:flutter/material.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_date.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_id.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_options_buttons.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_status.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_total_cost_and_discount.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_user.dart';

class OrderItemContent extends StatelessWidget {
  final OrderItem order;
  const OrderItemContent({super.key, required this.order});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 10,
        children: [
          OrderDate(date: order.createdAt),
          OrderUser(userID: order.userId),
          OrderId(orderId: order.id),
          OrderTotalCostAndDiscount(
            totalCost: order.totalCost,
            discount: order.discount ?? 0,
          ),
          OrderOptionsButtons(orderItem: order),
          OrderStatus(status: order.status),
        ],
      ),
    );
  }
}
