import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_list_filter_by_category_provider.g.dart';

@riverpod
class ProductsListFilterByCategory extends _$ProductsListFilterByCategory {
  @override
  String? build() => null;

  void selectedCategory(String? value) {
    state = value;
  }
}
