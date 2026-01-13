import 'dart:typed_data';

import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_product_provider.g.dart';

@riverpod
class EditProduct extends _$EditProduct {
  @override
  Product? build() => null;

  void openProductToEdit(Product? productItem) => state = productItem;
  void closeProductEditform(Product? productItem) => state = null;

  void updateThumbnail(Uint8List? thumbnail) {
    final current = state;
    if (current == null) return;
    state = Product(
      id: current.id,
      description: current.description,
      price: current.price,
      thumbnail: thumbnail,
      categoryId: current.categoryId,
      cover: current.cover,
      images: current.images,
      video: current.video,
      title: current.title,
    );
  }
}
