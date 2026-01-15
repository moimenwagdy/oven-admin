import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';

class DeleteItemButton extends ConsumerWidget {
  final String productId;
  const DeleteItemButton({super.key, required this.productId});

  @override
  Widget build(BuildContext context, ref) {
    final productExist = ref.watch(productsProvider).whenData((data) {
      return data.any((item) => item.id == productId);
    }).value;
    return SizedBox(
      height: 40,
      width: 140,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.red,
          overlayColor: Theme.of(context).colorScheme.onPrimary,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

          animationDuration: const Duration(milliseconds: 200),
        ),
        onPressed: productExist!
            ? () {
                ref.read(productsProvider.notifier).deletePRoduct(productId);
                ref.invalidate(productsProvider);
                ref
                    .read(editProductProvider.notifier)
                    .closeProductEditform(null);
              }
            : null,
        child: Text(
          "Delete",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
