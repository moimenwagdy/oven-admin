import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/edit_order_provider.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class OrderOptionsButtons extends ConsumerWidget {
  final OrderItem orderItem;
  const OrderOptionsButtons({super.key, required this.orderItem});
  @override
  Widget build(BuildContext context, ref) {
    return Row(
      spacing: 10,
      children: [
        SizedBox(
          width: 120,
          child: FormSubmitButtom(
            onPressed: () {
              ref
                  .read(editOrderProvider.notifier)
                  .openOrderItemToEdit(orderItem);
            },
            textChild: context.l10n.edit,
          ),
        ),
        SizedBox(
          width: 120,
          child: FormSubmitButtom(
            onPressed: () {},
            textChild: context.l10n.delete,
          ),
        ),
      ],
    );
  }
}
