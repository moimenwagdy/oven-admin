import 'package:flutter/material.dart';

class NavImage extends StatelessWidget {
  const NavImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
        color: Theme.of(context).colorScheme.onPrimary,
      padding: EdgeInsets.all(5),
      child: Image.asset("lib/assets/logo_larg.png", fit: BoxFit.fitHeight),
    );
  }
}
