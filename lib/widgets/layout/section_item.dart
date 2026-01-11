import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SectionItem extends StatelessWidget {
  final String destination;
  final String textChild;
  final bool isSelected;
  final VoidCallback? onSelected;

  const SectionItem({
    super.key,
    required this.destination,
    required this.textChild,
    required this.isSelected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).colorScheme.primary;

    return Container(
      color: isSelected
          ? Theme.of(context).colorScheme.primary
          : Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: selectedColor,
        onTap: () {
          context.go(destination);
          onSelected?.call();
        },
        title: Text(
          textChild,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
        titleTextStyle: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}
