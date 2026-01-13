import 'package:flutter/material.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/cancel_edit_product_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/edit_product_inputs.dart';

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
  }
  @override
  void dispose() {
    idController.dispose();
    titleController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    super.dispose();
  }
  @override
  void didUpdateWidget(EditProductForm oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.productItem.id != widget.productItem.id) {
      idController.text = widget.productItem.id;
      titleController.text = widget.productItem.title;
      descriptionController.text = widget.productItem.description;
      priceController.text = widget.productItem.price.toString();
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
                priceController: priceController,
                productItem: widget.productItem,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  CancelEditProductButton(),
                  FormSubmitButtom(textChild: "Submit", onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
