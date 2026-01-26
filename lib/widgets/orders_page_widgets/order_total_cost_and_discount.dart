import 'package:flutter/material.dart';

class OrderTotalCostAndDiscount extends StatelessWidget {
  final double totalCost;
  final double discount;

  const OrderTotalCostAndDiscount({
    super.key,
    required this.discount,
    required this.totalCost,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 60, child: Center(child: Text("$totalCost LE"))),
        SizedBox(width: 60, child: Center(child: Text("${(discount * 100)}%"))),
      ],
    );
  }
}
