import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class OrderOptionsButtons extends StatelessWidget {
  const OrderOptionsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        FormSubmitButtom(onPressed: () {}, textChild: context.l10n.edit),
        FormSubmitButtom(onPressed: () {}, textChild: context.l10n.delete),
      ],
    );
  }
}
