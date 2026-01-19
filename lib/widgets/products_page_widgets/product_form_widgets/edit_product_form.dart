import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/cancel_edit_product_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/delete_item_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/edit_product_inputs.dart';

class EditProductForm extends StatefulWidget {
  final Product productItem;
  const EditProductForm({super.key, required this.productItem});
  @override
  State<EditProductForm> createState() => _EditProductFormState();
}

class _EditProductFormState extends State<EditProductForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController idController;
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;
  late final TextEditingController priceController;
  late final TextEditingController categoryController;
  late final TextEditingController discountCotroller;
  @override
  void initState() {
    super.initState();
    idController = TextEditingController(text: widget.productItem.id);
    titleController = TextEditingController(text: widget.productItem.title);
    descriptionController = TextEditingController(
      text: widget.productItem.description,
    );
    priceController = TextEditingController(
      text: widget.productItem.price.toString(),
    );
    categoryController = TextEditingController(
      text: widget.productItem.categoryId,
    );
    discountCotroller = TextEditingController(
      text: widget.productItem.discount == null
          ? 0.toString()
          : widget.productItem.discount.toString(),
    );
  }

  @override
  void dispose() {
    idController.dispose();
    titleController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    discountCotroller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(EditProductForm oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.productItem.id != widget.productItem.id) {
      idController.text = widget.productItem.id;
      titleController.text = widget.productItem.title;
      descriptionController.text = widget.productItem.description;
      categoryController.text = widget.productItem.categoryId;
      priceController.text = widget.productItem.price.toString();
      discountCotroller.text = widget.productItem.discount == null
          ? 0.toString()
          : widget.productItem.discount.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 40,
            children: [
              EditProductInputs(
                idController: idController,
                titleController: titleController,
                descriptionController: descriptionController,
                categoryController: categoryController,
                priceController: priceController,
                discountCotroller: discountCotroller,
                productItem: widget.productItem,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      return FormSubmitButtom(
                        textChild: context.l10n.submit,
                        onPressed: () {
                          ref
                              .read(productsProvider.notifier)
                              .addProduct(
                                Product(
                                  id: idController.text,
                                  title: titleController.text,
                                  description: descriptionController.text,
                                  images: widget.productItem.images,
                                  thumbnail: widget.productItem.thumbnail,
                                  price: double.parse(priceController.text),
                                  categoryId: categoryController.text,
                                  cover: widget.productItem.cover,
                                  discount: double.parse(
                                    discountCotroller.text,
                                  ),
                                ),
                              );
                          ref.invalidate(productsProvider);
                          ref
                              .read(editProductProvider.notifier)
                              .closeProductEditform(null);
                        },
                      );
                    },
                  ),
                  CancelEditProductButton(),
                  DeleteItemButton(productId: widget.productItem.id),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
