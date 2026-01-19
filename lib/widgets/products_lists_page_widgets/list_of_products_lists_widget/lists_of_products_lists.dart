import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/list_of_products_lists_widget/list_item_of_products_lists.dart';

class ListsOfProductsLists extends ConsumerWidget {
  const ListsOfProductsLists({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final listsSrc = ref.watch(listsProvider);
    return listsSrc.when(
      data: (data) {
        return SizedBox(
          height: context.screenHeight - 100,
          width: 250,
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                    color: Theme.of(context).colorScheme.onPrimary,
                    height: 5,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return ListItemOfProductsLists(item: item);
                  },
                ),
              ),
            ],
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
