import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_category_provider.g.dart';

@riverpod
class EditCategory extends _$EditCategory {
  @override
  Category? build() => null;

  void openCategoryToEdit(Category? categoryItem) => state = categoryItem;
  void closeCategoryEditform(Category? categoryItem) => state = null;
}
