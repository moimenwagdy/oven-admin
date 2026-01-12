import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_editable_listile.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final productsProviderSrc = ref.watch(productsProvider);
    return productsProviderSrc.when(
      data: (data) {
        return SizedBox(
          height: context.screenHeight - 100,
          width: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              color: Theme.of(context).colorScheme.onPrimary,
              height: 5,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return CustomEditableListile(
                title: item.title,
                onClick: () {
                  ref
                      .read(editProductProvider.notifier)
                      .openProductToEdit(item);
                },
              );
            },
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
