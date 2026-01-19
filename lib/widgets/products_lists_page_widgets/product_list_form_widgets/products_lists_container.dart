import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_header.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/empty_products_lists_page_placeholer.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/product_list_form_widgets/form_of_products_list.dart';

class ProductsListsContainer extends ConsumerWidget {
  const ProductsListsContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editListProvider);

    final Widget childWidget = item != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children: [
              CustomHeader(itemName: item.listHeader),
              FormOfProductsList(item: item),
            ],
          )
        : EmptyProductsListsPagePlaceholer();

    return childWidget;
  }
}
