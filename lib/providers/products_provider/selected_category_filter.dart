import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_category_filter.g.dart';

@riverpod
class CategoriesFilter extends _$CategoriesFilter {
  @override
  String? build() => null;

  void selectedCategory(String? value) {
    state = value;
  }
}
