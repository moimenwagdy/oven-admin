import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  final String status;
  const OrderStatus({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: genColor(status),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(12)),
      ),
      child: Center(
        child: Text(status, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

Color genColor(String type) {
  final colors = {
    "Delivered": Colors.green,
    "Preparing": Colors.blueAccent,
    "Cancelled": Colors.redAccent,
    "Scheduled": Colors.purple,
  };

  return colors[type] ?? Colors.transparent;
}

final List<String> items = ['Delivered', 'Preparing', 'Cancelled', "Scheduled"];
