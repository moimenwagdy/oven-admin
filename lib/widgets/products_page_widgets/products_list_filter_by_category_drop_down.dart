import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:oven_admin/providers/products_provider/products_list_filter_by_category_provider.dart';

class ProductsListFilterByCategoryDropDown extends ConsumerWidget {
  const ProductsListFilterByCategoryDropDown({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categoriesItemsSrc = ref.watch(categoriesProvider);
    final selectedValue = ref.watch(productsListFilterByCategoryProvider);
    return categoriesItemsSrc.when(
      data: (data) {
        return SizedBox(
          height: 50,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              items: data
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item.name,
                      alignment: Alignment.center,
                      child: Text(item.name, textAlign: TextAlign.center),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: (value) => ref
                  .read(productsListFilterByCategoryProvider.notifier)
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
                      selectedValue ?? "Filter",
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
                    if (selectedValue != null) Spacer(),
                    if (selectedValue != null)
                      IconButton(
                        onPressed: () {
                          ref
                              .read(
                                productsListFilterByCategoryProvider.notifier,
                              )
                              .selectedCategory(null);
                        },

                        icon: Icon(Icons.close, size: 15),
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
          ),
        );
      },
      loading: () => SizedBox(
        width: 200,
        height: 50,
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
