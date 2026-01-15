import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_editable_listile.dart';

class ProductItem extends ConsumerWidget {
  final Product item;
  const ProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context, ref) {
    return CustomEditableListile(
      title: item.title,
      onClick: () {
        ref.read(editProductProvider.notifier).openProductToEdit(item);
      },
    );
  }
}
