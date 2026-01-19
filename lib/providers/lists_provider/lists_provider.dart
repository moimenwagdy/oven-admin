import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'lists_provider.g.dart';

@Riverpod(keepAlive: true)
class ListsNotifier extends _$ListsNotifier {
  @override
  FutureOr<List<ProductsList>> build() async {
    return fetchLists();
  }

  Future<List<ProductsList>> fetchLists() async {
    await Future.delayed(const Duration(seconds: 2));
    return productsLists;
  }

  void addList(ProductsList payload) {
    final current = state.value;
    if (current == null) return;

    final index = current.indexWhere((item) => item.listID == payload.listID);
    if (index == -1) {
      current.add(payload);
    } else {
      current.removeAt(index);
      current.add(payload);
    }
  }

  void deleteList(String listId) {
    final current = state.value;
    if (current == null) return;

    final index = productsLists.indexWhere((r) => r.listID == listId);
    productsLists.remove(productsLists[index]);
  }
}

class ProductsList {
  final String listID;
  final String listHeader;
  final List<Product> prodcuts;
  ProductsList({
    required this.listHeader,
    required this.prodcuts,
    required this.listID,
  });
}

final List<ProductsList> productsLists = [
  ProductsList(
    listHeader: "In others favorites",
    prodcuts: englishProducts.sublist(0, 8).toList(),
    listID: "F1E43S",
  ),
  ProductsList(
    listHeader: "discount items",
    listID: "S4T78J",
    prodcuts: englishProducts.where((ele) => ele.discount != null).toList(),
  ),
];
