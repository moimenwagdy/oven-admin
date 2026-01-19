import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class ListFormSubmitButton extends ConsumerWidget {
  final TextEditingController headerController;
  final TextEditingController idController;
  const ListFormSubmitButton({
    super.key,
    required this.headerController,
    required this.idController,
  });

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(editListProvider)?.prodcuts;

    return FormSubmitButtom(
      textChild: context.l10n.submit,
      onPressed: () {
        ref
            .read(listsProvider.notifier)
            .addList(
              ProductsList(
                listID: idController.text,
                listHeader: headerController.text,
                prodcuts: products!,
              ),
            );

        ref.invalidate(listsProvider);
        ref.read(editListProvider.notifier).closeListEditform(null);
      },
    );
  }
}
