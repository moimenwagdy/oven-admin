import 'package:flutter/material.dart';

class SmallScreenMenuButton extends StatelessWidget {
  const SmallScreenMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          icon: Icon(Icons.list),
          color: Colors.white,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    );
  }
}
