import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/orders_provider/edit_order_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class EditFormButtons extends ConsumerWidget {
  const EditFormButtons({super.key});
  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        FormSubmitButtom(
          onPressed: () {
            ref.read(editOrderProvider.notifier).clearOrderItemEditForm(null);
          },
          textChild: "Cancel",
        ),
        FormSubmitButtom(
          onPressed: () {
            ref.read(editOrderProvider.notifier).clearOrderItemEditForm(null);
          },
          textChild: "Remove",
        ),
        FormSubmitButtom(
          onPressed: () {
          },
          textChild: "Confirm",
        ),
      ],
    );
  }
}
