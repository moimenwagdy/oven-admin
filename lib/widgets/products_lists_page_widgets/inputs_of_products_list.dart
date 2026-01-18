import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/products_selections.dart';

class InputsOfProductsList extends StatelessWidget {
  final TextEditingController headerController;
  final TextEditingController idController;
  final List<Product> products;
  const InputsOfProductsList({
    super.key,
    required this.headerController,
    required this.idController,
    required this.products,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomEditInputWithTitle(
          name: "ID",
          childWidget: CustomTextField(
            controller: idController,
            name: "ID",
            inputType: TextInputType.text,
            enabled: false,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Header",
          childWidget: CustomTextField(
            controller: headerController,
            name: "Header",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Products",
          childWidget: ProductsSelections(exiseListItems: products),
        ),
      ],
    );
  }
}
