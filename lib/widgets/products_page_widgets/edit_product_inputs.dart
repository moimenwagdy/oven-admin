import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:oven_admin/widgets/products_page_widgets/dropdown_categories.dart';

class EditProductInputs extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;

  const EditProductInputs({
    super.key,
    required this.idController,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
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
            name: "ID",
            inputType: TextInputType.text,
            enabled: false,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Category",
          childWidget: DropdownCategories(),
        ),
        CustomEditInputWithTitle(
          name: "Title",
          childWidget: CustomTextField(
            controller: titleController,
            name: "Title",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Description",
          childWidget: CustomTextField(
            controller: descriptionController,
            name: "Description",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "price",
          childWidget: CustomTextField(
            controller: priceController,
            name: "price",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),

        CustomEditInputWithTitle(
          name: "Thumbnail",
          childWidget: FormSubmitButtom(
            textChild: "Edit Thumbnail",
            onPressed: () {},
          ),
        ),
        CustomEditInputWithTitle(
          name: "Images",
          childWidget: FormSubmitButtom(
            textChild: "Edit Images",
            onPressed: () {},
          ),
        ),
        CustomEditInputWithTitle(
          name: "Video",
          childWidget: FormSubmitButtom(
            textChild: "Edit Video",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
