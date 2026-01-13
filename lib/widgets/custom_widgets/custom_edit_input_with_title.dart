import 'package:flutter/material.dart';

class CustomEditInputWithTitle extends StatelessWidget {
  final String name;
  final Widget childWidget;
  final Widget? previewArea;
  const CustomEditInputWithTitle({
    super.key,
    required this.name,
    required this.childWidget,
    this.previewArea,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 100, child: Text(name)),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
          child: childWidget,
        ),
          Container(
            width: 150,
            height: 50,
            child: previewArea,
          ),
      ],
    );
  }
}
