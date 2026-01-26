import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:uuid/uuid.dart';

class EmptyProductPagePlaceholder extends ConsumerWidget {
  const EmptyProductPagePlaceholder({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              context.l10n.editProductsSection,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(context.l10n.selectProductToEdit, style: TextStyle(fontSize: 12)),
          ],
        ),
        SizedBox(
          width: 200,
          child: FormSubmitButtom(
            textChild: context.l10n.addNewProduct,
            onPressed: () {
              ref
                  .read(editProductProvider.notifier)
                  .openProductToEdit(
                    Product(
                      id: const Uuid().v1().substring(0, 6),
                      title: "",
                      description: "",
                      images: [],
                      thumbnail: null,
                      price: 0,
                      categoryId: "",
                      cover: null,
                      discount: null,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
