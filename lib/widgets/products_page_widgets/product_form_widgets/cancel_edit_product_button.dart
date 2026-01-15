import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class CancelEditProductButton extends ConsumerWidget {
  const CancelEditProductButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return FormSubmitButtom(
      textChild: "Cancel",
      onPressed: () {
        ref.read(editProductProvider.notifier).closeProductEditform(null);
      },
    );
  }
}
