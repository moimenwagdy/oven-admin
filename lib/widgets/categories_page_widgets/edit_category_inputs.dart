import 'package:flutter/material.dart';
import 'package:oven_admin/providers/categories_providers/upload_category_thumbnail.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';

class EditCategoryInputs extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController nameController;
  final TextEditingController orderController;
  const EditCategoryInputs({
    super.key,
    required this.idController,
    required this.nameController,
    required this.orderController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomEditInputWithTitle(
          name: "ID",
          childWidget: CustomTextField(
            controller: idController,
            enabled: false,
            inputType: TextInputType.text,
            name: "ID",
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Name",
          childWidget: CustomTextField(
            controller: nameController,
            inputType: TextInputType.text,
            name: "Name",
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Order",
          childWidget: CustomTextField(
            controller: orderController,
            inputType: TextInputType.text,
            name: "Order",
            showNameAtTop: false,
          ),
        ),
        UploadCategoryThumbnail(),
      ],
    );
  }
}
