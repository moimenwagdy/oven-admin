import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Oven Admin Dashboard",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
