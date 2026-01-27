import 'package:flutter/material.dart';
import 'package:oven_admin/providers/orders_provider/orders_provider.dart';
import 'package:oven_admin/utils/helpers/reformat_date.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:oven_admin/widgets/orders_page_widgets/edit_order_form/edit_status_dropdown.dart';
import 'package:oven_admin/widgets/orders_page_widgets/orders_list/order_items.dart';

class EditOrderInputs extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController discountController;
  final OrderItem orderItem;
  const EditOrderInputs({
    super.key,
    required this.idController,
    required this.discountController,
    required this.orderItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              Row(
                children: [
                  Text(
                    "Created At : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(reformateFullDate(context, orderItem.createdAt)),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Updated At : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(reformateFullDate(context, orderItem.updatedAt)),
                ],
              ),
              Row(
                children: [
                  Text(
                    "User : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(orderItem.userId),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Total Cost : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${orderItem.totalCost} LE"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          CustomEditInputWithTitle(
            name: "Order Id",
            childWidget: CustomTextField(
              controller: idController,
              name: "Order Id",
              inputType: TextInputType.text,
              enabled: false,
              showNameAtTop: false,
            ),
          ),
          CustomEditInputWithTitle(
            name: "Discount",
            childWidget: CustomTextField(
              controller: discountController,
              name: "Discount",
              inputType: TextInputType.text,
              showNameAtTop: false,
            ),
          ),
          CustomEditInputWithTitle(
            name: "Status",
            childWidget: EditStatusDropdown(),
          ),
          CustomEditInputWithTitle(
            name: "Order Items",
            childWidget: SizedBox.shrink(),
            colPrviewArea: OrderItems(items: orderItem.orderItems),
          ),
        ],
      ),
    );
  }
}
