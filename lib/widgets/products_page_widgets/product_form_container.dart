import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_header.dart';
import 'package:oven_admin/widgets/products_page_widgets/edit_product_form.dart';
import 'package:oven_admin/widgets/products_page_widgets/empty_product_page_placeholder.dart';

class ProductFormContainer extends ConsumerWidget {
  const ProductFormContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final productItem = ref.watch(editProductProvider);

    final Widget childWidget = productItem != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children: [
              CustomHeader(itemName: productItem.title),
              EditProductForm(productItem: productItem),
            ],
          )
        : EmptyProductPagePlaceholder();

    return childWidget;
  }
}
