import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_icon.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  const CategoryItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.onSecondaryFixed,
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: CustomIcon(icon: Icons.delete),
            ),
            IconButton(
              onPressed: () {},
              icon: CustomIcon(icon: Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
