import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';

class DropdownCategoriesInsideProductForm extends ConsumerWidget {
  final TextEditingController controller;
  const DropdownCategoriesInsideProductForm({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, ref) {
    final src = ref.read(categoriesProvider);
    return src.when(
      data: (data) {
        return DropdownMenu(
          controller: controller,
          dropdownMenuEntries: data.map((ele) {
            return DropdownMenuEntry(value: ele.name, label: ele.name);
          }).toList(),
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
