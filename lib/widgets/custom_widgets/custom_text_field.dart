import 'package:flutter/material.dart';
import 'package:oven_admin/utils/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  final bool showNameAtTop;
  final bool enabled;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.name,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    required this.inputType,
    this.validator,
    this.showNameAtTop = true,
    this.enabled = true,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      cursorHeight: 24,
      enabled: enabled,
      controller: controller,
      textCapitalization: textCapitalization,
      maxLength: 50,
      maxLines: 1,
      obscureText: obscureText,
      keyboardType: inputType,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        isDense: true,
        labelText: showNameAtTop ? name : null,
        counterText: "",
        labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: .5),
        ),
        floatingLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: lighterPrimary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
