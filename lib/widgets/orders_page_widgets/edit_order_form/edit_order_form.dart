import 'package:flutter/material.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/widgets/orders_page_widgets/edit_order_form/edit_form_buttons.dart';
import 'package:oven_admin/widgets/orders_page_widgets/edit_order_form/edit_order_inputs.dart';

class EditOrderForm extends StatefulWidget {
  final OrderItem orderItem;
  const EditOrderForm({super.key, required this.orderItem});

  @override
  State<EditOrderForm> createState() => _EditOrderFormState();
}

class _EditOrderFormState extends State<EditOrderForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController idController;
  late final TextEditingController discountController;

  @override
  void initState() {
    super.initState();
    idController = TextEditingController(text: widget.orderItem.id);
    discountController = TextEditingController(
      text: widget.orderItem.discount.toString(),
    );
  }

  @override
  void dispose() {
    idController.dispose();
    discountController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(EditOrderForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.orderItem.id != widget.orderItem.id) {
      idController.text = widget.orderItem.id;
      discountController.text = widget.orderItem.discount.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20,
        children: [
          EditOrderInputs(
            idController: idController,
            discountController: discountController,
            orderItem: widget.orderItem,
          ),
          EditFormButtons(),
        ],
      ),
    );
  }
}
