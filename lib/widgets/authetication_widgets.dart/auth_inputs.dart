import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';

class AuthInputs extends StatelessWidget {
  final TextEditingController adminNameController;
  final TextEditingController passwordController;
  const AuthInputs({
    super.key,
    required this.adminNameController,
    required this.passwordController,
  });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400, minWidth: 300),
      child: Column(
        spacing: 15,
        children: [
          CustomTextField(
            controller: adminNameController,
            inputType: TextInputType.name,
            name: context.l10n.userName,
          ),
          CustomTextField(
            controller: passwordController,
            inputType: TextInputType.name,
            name: context.l10n.password,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
