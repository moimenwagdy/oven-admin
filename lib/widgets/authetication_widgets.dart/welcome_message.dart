import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.welcomeMessage,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
