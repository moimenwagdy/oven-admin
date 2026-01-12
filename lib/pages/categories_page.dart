import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/categories_page_widgets/categories_list.dart';
import 'package:oven_admin/widgets/categories_page_widgets/category_form_container.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        CategoriesList(),
        Expanded(child: CategoryFormContainer()),
      ],
    );
  }
}
