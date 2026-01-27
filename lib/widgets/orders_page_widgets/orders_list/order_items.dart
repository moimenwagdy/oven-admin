import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/edit_order_provider.dart';

class OrderItems extends ConsumerWidget {
  final List<OrderContentItemType> items;
  const OrderItems({super.key, required this.items});
  @override
  Widget build(BuildContext context, ref) {
    final isEmpty = items.isEmpty;
    return isEmpty
        ? Text(
            "Order is empty, and considered cancelled until you add at least one item.",
            style: TextStyle(color: Colors.red),
          )
        : Wrap(
            runAlignment: WrapAlignment.start,
            spacing: 5,
            children: items.map((ele) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.amber.withValues(alpha: .1),
                    height: 20,
                    child: Row(
                      spacing: 2,
                      children: [
                        Text(ele.quantity.toString()),
                        Text(ele.title),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.all(1),
                    iconSize: 10,
                    constraints: BoxConstraints(maxHeight: 14, maxWidth: 14),
                    onPressed: () {
                      ref
                          .read(editOrderProvider.notifier)
                          .removeItemFromOrderItems(ele.id);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              );
            }).toList(),
          );
  }
}

class OrderContentItemType {
  final int quantity;
  final String id;
  final String title;
  const OrderContentItemType({
    required this.id,
    required this.title,
    required this.quantity,
  });
}
