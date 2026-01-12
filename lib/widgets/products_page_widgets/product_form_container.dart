import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/widgets/products_page_widgets/edit_product_form.dart';

class ProductFormContainer extends ConsumerWidget {
  const ProductFormContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final productItem = ref.watch(editProductProvider);

    final Widget childWidget = productItem != null
        ? Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productItem.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              EditProductForm(productItem: productItem),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Edit Products Section",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("Select Product To Edit", style: TextStyle(fontSize: 12)),
            ],
          );

    return childWidget;
  }
}
