import 'package:flutter/material.dart';

class CustomEditInputWithTitle extends StatelessWidget {
  final String name;
  final Widget childWidget;
  final Widget? rowPreviewArea;
  final Widget? colPrviewArea;
  const CustomEditInputWithTitle({
    super.key,
    required this.name,
    required this.childWidget,
    this.rowPreviewArea,
    this.colPrviewArea,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 100, child: Text(name)),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200, minWidth: 200),
              child: childWidget,
            ),
            SizedBox(width: 150, height: 50, child: rowPreviewArea),
          ],
        ),
        if (colPrviewArea != null) colPrviewArea!,
      ],
    );
  }
}
