import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class InputsOfProductsList extends StatelessWidget {
  final TextEditingController headerController;
  final TextEditingController idController;
  const InputsOfProductsList({
    super.key,
    required this.headerController,
    required this.idController,
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
          name: "Header",
          childWidget: CustomTextField(
            controller: headerController,
            name: "Header",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
      ],
    );
  }
}
