import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class CancelEditingList extends ConsumerWidget {
  const CancelEditingList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return FormSubmitButtom(
      textChild: context.l10n.cancel,
      onPressed: () {
        ref.read(editListProvider.notifier).closeListEditform(null);
      },
    );
  }
}
