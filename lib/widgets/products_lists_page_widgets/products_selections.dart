import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class ProductsSelections extends ConsumerWidget {
  final List<Product> exiseListItems;
  const ProductsSelections({super.key, required this.exiseListItems});
  @override
  Widget build(BuildContext context, ref) {
    List<Product> items = [];
    ref
        .watch(productsProvider)
        .when(
          data: (data) {
            items = data;
          },
          loading: () => Text("data"),
          error: (error, stackTrace) {
            items = [];
          },
        );

    return FormSubmitButtom(
      textChild: "Select items",
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text("Select items"),
            content: SizedBox(
              width: 300,
              child: ListView(
                shrinkWrap: true,
                children: items.map((item) {
                  return CheckboxListTile(
                    title: Text(item.title),
                    value: exiseListItems.contains(item),
                    onChanged: (val) {
                      print(val);
                    },
                  );
                }).toList(),
              ),
            ),
            actions: [TextButton(onPressed: () {}, child: const Text("Done"))],
          ),
        );
      },
    );
  }
}
