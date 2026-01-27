import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/edit_order_provider.dart';
import 'package:oven_admin/widgets/orders_page_widgets/edit_order_form/edit_order_form.dart';

class OrderFormContainer extends ConsumerWidget {
  const OrderFormContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final orderItem = ref.watch(editOrderProvider);

    final childWidget = orderItem == null
        ? Text("Empty page")
        : EditOrderForm(orderItem: orderItem);

    return childWidget;
  }
}
