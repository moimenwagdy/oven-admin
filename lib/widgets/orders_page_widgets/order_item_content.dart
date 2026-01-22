import 'package:flutter/material.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/utils/helpers/reformat_date.dart';

class OrderItemContent extends StatelessWidget {
  final OrderItem order;
  const OrderItemContent({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 250,
            child: Column(
              children: [
                Text(order.id),
                Text(reformatDate(context, order.createdAt)),
                Text(order.status),
                Text(order.totalCost.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
