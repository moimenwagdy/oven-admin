import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/widgets/categories_page_widgets/edit_category_form.dart';

class CategoryFormContainer extends ConsumerWidget {
  const CategoryFormContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editCategoryProvider);

    final Widget childWidget = item != null
        ? Column(
            spacing: 40,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              EditCategoryForm(categoryItem: item),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Edit Category Section",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("Select Category To Edit", style: TextStyle(fontSize: 12)),
            ],
          );
    return childWidget;
  }
}


