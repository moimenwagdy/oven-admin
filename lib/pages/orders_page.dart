import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/orders_page_widgets/filters_container.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       FiltersContainer()
      ],
    );
  }
}
