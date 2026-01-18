import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_editable_listile.dart';

class ListItemOfProductsLists extends ConsumerWidget {
  final ProductsList item;
  const ListItemOfProductsLists({super.key, required this.item});

  @override
  Widget build(BuildContext context, ref) {
    print(item.prodcuts.length);
    return CustomEditableListile(
      title: item.listHeader,
      onClick: () {
        ref.read(editListProvider.notifier).openListToEdit(item);
      },
    );
  }
}
