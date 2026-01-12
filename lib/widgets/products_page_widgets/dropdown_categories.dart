import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:oven_admin/providers/products_provider/selected_category_filter.dart';

class DropdownCategories extends ConsumerWidget {
  const DropdownCategories({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categoriesItemsSrc = ref.watch(categoriesProvider);
    final selectedValue = ref.watch(categoriesFilterProvider);
    return categoriesItemsSrc.when(
      data: (data) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            items: data
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item.name,
                    alignment: Alignment.center,
                    child: Text(
                      item.name,
                      // style: textStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                .toList(),
            value: selectedValue,
            onChanged: (value) => ref
                .read(categoriesFilterProvider.notifier)
                .selectedCategory(value),
            customButton: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    selectedValue ?? "",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ],
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: BoxBorder.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              elevation: 2,
              offset: const Offset(0, 0),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.zero,
            ),
          ),
        );
      },
      loading: () => SizedBox(
        width: 200,
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      error: (error, stackTrace) {
        return Text("No Data");
      },
    );
  }
}
