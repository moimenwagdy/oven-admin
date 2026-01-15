import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/product_form_container.dart';
import 'package:oven_admin/widgets/products_page_widgets/products_list_widgets/products_list.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProductsList(),
        Expanded(child: ProductFormContainer()),
      ],
    );
  }
}
