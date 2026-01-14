import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_editable_listile.dart';

class CategoriesList extends ConsumerWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categoriesProviderSrc = ref.watch(categoriesProvider);

    return categoriesProviderSrc.when(
      data: (data) {
        return SizedBox(
          height: context.screenHeight - 100,
          width: 200,
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              color: Theme.of(context).colorScheme.onPrimary,
              height: 5,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return CustomEditableListile(
                title: item.name,
                onClick: () {
                  ref
                      .read(editCategoryProvider.notifier)
                      .openCategoryToEdit(item);
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
        return Text("$error");
      },
    );
  }
}
