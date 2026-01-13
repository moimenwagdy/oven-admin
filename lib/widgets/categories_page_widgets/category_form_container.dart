import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/widgets/categories_page_widgets/edit_category_form.dart';
import 'package:oven_admin/widgets/categories_page_widgets/empty_category_page_placeholder.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_header.dart';

class CategoryFormContainer extends ConsumerWidget {
  const CategoryFormContainer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editCategoryProvider);
    final Widget childWidget = item != null
        ? Column(
            spacing: 40,
            children: [
              CustomHeader(itemName: item.name),
              EditCategoryForm(categoryItem: item),
            ],
          )
        : EmptyCategoryPagePlaceholder();
    return childWidget;
  }
}
