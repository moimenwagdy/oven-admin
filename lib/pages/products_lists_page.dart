import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/lists_of_products_lists.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/products_lists_container.dart';

class ProductsListsPage extends StatelessWidget {
  const ProductsListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ListsOfProductsLists(),
        Expanded(child: ProductsListsContainer()),
      ],
    );
  }
}
