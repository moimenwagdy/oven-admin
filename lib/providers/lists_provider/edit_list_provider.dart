import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'edit_list_provider.g.dart';

@riverpod
class EditList extends _$EditList {
  @override
  ProductsList? build() => null;

  void openListToEdit(ProductsList? productsList) => state = productsList;
  void closeListEditform(ProductsList? productsList) => state = null;

  addProductToList(Product product) {
    final current = state;
    if (current == null) return;

    final List<Product> newArr = [...current.prodcuts, product];
    state = ProductsList(
      listHeader: current.listHeader,
      prodcuts: newArr,
      listID: current.listID,
    );
  }

  removeProductFromList(Product product) {
    final current = state;
    if (current == null) return;

    final List<Product> newArr = current.prodcuts
        .where((ele) => ele.id != product.id)
        .toList();

    state = ProductsList(
      listHeader: current.listHeader,
      prodcuts: newArr,
      listID: current.listID,
    );
  }
}
