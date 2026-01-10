import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/authetication_widgets.dart/auth_inputs.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _adminNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _adminNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  onPress() {
    print(_adminNameController.text);
    print(_passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 40,
        children: [
          AuthInputs(
            adminNameController: _adminNameController,
            passwordController: _passwordController,
          ),
          SizedBox(
            height: 40,
            width: 140,
            child: FormSubmitButtom(
              textChild: Text(
                context.l10n.submit,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 16,
                ),
              ),
              onPressed: onPress,
            ),
          ),
        ],
      ),
    );
  }
}
