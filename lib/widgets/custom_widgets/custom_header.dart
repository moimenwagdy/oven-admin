import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String itemName;
  const CustomHeader({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            itemName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
