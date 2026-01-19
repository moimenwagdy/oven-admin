import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class ProductsSelections extends ConsumerWidget {
  const ProductsSelections({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    return FormSubmitButtom(
      textChild: context.l10n.selectItems,
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => Consumer(
            builder: (context, ref, _) {
              final listState = ref.watch(editListProvider);

              return AlertDialog(
                title:  Text(context.l10n.selectItems),
                content: SizedBox(
                  width: 300,
                  child: productsAsync.when(
                    data: (items) => ListView(
                      shrinkWrap: true,
                      children: items.map((item) {
                        final isSelected =
                            listState?.prodcuts.any((p) => p.id == item.id) ??
                            false;

                        return CheckboxListTile(
                          title: Text(item.title),
                          value: isSelected,
                          onChanged: (val) {
                            if (val == true) {
                              ref
                                  .read(editListProvider.notifier)
                                  .addProductToList(item);
                            } else {
                              ref
                                  .read(editListProvider.notifier)
                                  .removeProductFromList(item);
                            }
                          },
                        );
                      }).toList(),
                    ),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (_, __) => const Text("Error loading products"),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Done"),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
