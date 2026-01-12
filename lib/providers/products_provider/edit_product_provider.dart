import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_product_provider.g.dart';

@riverpod
class EditProduct extends _$EditProduct {
  @override
  Product? build() => null;

  void openProductToEdit(Product? productItem) => state = productItem;
  void closeProductEditform(Product? productItem) => state = null;
}
