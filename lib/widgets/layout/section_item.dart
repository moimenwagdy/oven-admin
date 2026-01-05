import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SectionItem extends StatelessWidget {
  final String destination;
  final String textChild;
  final bool isSelected;
  const SectionItem({
    super.key,
    required this.destination,
    required this.textChild,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: Theme.of(context).colorScheme.primary,
      onTap: () {
        context.go(destination);
      },
      title: Text(
        textChild,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      style: ListTileStyle.drawer,
      titleTextStyle: TextStyle(
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        fontSize: 16,
      ),
    );
  }
}
