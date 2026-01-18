import 'package:flutter/material.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:oven_admin/widgets/products_lists_page_widgets/inputs_of_products_list.dart';

class FormOfProductsList extends StatefulWidget {
  final ProductsList item;
  const FormOfProductsList({super.key, required this.item});

  @override
  State<FormOfProductsList> createState() => _FormOfProductsListState();
}

class _FormOfProductsListState extends State<FormOfProductsList> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController headerController;
  late final TextEditingController idController;

  @override
  void initState() {
    super.initState();
    headerController = TextEditingController(text: widget.item.listHeader);
    idController = TextEditingController(text: widget.item.listID);
  }

  @override
  void dispose() {
    headerController.dispose();
    idController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FormOfProductsList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.item.listID != widget.item.listID) {
      headerController.text = widget.item.listHeader;
      idController.text = widget.item.listID;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 40,
        children: [
          InputsOfProductsList(
            headerController: headerController,
            idController: idController,
          ),
          Row(
            children: [
              FormSubmitButtom(textChild: "Submit"),
              FormSubmitButtom(textChild: "Cancel"),
              FormSubmitButtom(textChild: "delete"),
            ],
          ),
        ],
      ),
    );
  }
}
