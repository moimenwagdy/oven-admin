import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'edit_list_provider.g.dart';

@riverpod
class EditList extends _$EditList {
  @override
  ProductsList? build() => null;

  void openListToEdit(ProductsList? productsList) => state = productsList;
  void closeListEditform(ProductsList? productsList) => state = null;


}
