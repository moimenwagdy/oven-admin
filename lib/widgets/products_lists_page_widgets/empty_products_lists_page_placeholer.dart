import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:uuid/uuid.dart';

class EmptyProductsListsPagePlaceholer extends ConsumerWidget {
  const EmptyProductsListsPagePlaceholer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              context.l10n.editListsSection,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(context.l10n.selectListToEdit, style: TextStyle(fontSize: 12)),
          ],
        ),
        SizedBox(
          width: 200,
          child: FormSubmitButtom(
            textChild: context.l10n.addNewList,
            onPressed: () {
              ref
                  .read(editListProvider.notifier)
                  .openListToEdit(
                    ProductsList(
                      listHeader: "",
                      listID: const Uuid().v1().substring(0, 6),
                      prodcuts: [],
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
