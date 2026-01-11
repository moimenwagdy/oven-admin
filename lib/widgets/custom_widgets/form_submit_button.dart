import 'package:flutter/material.dart';
import 'package:oven_admin/utils/constants/colors.dart';

class FormSubmitButtom extends StatelessWidget {
  final String textChild;
  final VoidCallback? onPressed;
  const FormSubmitButtom({super.key, required this.textChild, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 140,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: lighterPrimary,
          overlayColor: Theme.of(context).colorScheme.onPrimary,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: BorderSide(
            color: onPressed != null
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,
            width: 1,
          ),
          animationDuration: const Duration(milliseconds: 200),
        ),
        onPressed: onPressed,
        child: Text(
          textChild,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
