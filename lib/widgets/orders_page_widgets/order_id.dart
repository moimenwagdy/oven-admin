import 'package:flutter/material.dart';

class OrderId extends StatelessWidget {
  final String orderId;
  const OrderId({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 60, child: Center(child: Text(orderId)));
  }
}
