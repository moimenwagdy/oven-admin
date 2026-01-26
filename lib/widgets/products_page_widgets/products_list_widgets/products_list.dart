import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/products_list_filter_by_category_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/products_page_widgets/products_list_widgets/product_item.dart';
import 'package:oven_admin/widgets/products_page_widgets/products_list_widgets/products_list_filter_by_category_drop_down.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final productsProviderSrc = ref.watch(productsProvider);
    final categoryFilter = ref.watch(productsListFilterByCategoryProvider);
    return productsProviderSrc.when(
      data: (data) {
        final filteredlist = categoryFilter != null
            ? data.where((ele) => ele.categoryId == categoryFilter).toList()
            : data;
        return SizedBox(
          height: context.screenHeight - 100,
          width: 250,
          child: Column(
            children: [
              ProductsListFilterByCategoryDropDown(),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    color: Theme.of(context).colorScheme.onPrimary,
                    height: 5,
                  ),
                  itemCount: filteredlist.length,
                  itemBuilder: (context, index) {
                    final item = filteredlist[index];
                    return ProductItem(item: item);
                  },
                ),
              ),
            ],
          ),
        );
      },
      loading: () => SizedBox(
        width: 250,
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
