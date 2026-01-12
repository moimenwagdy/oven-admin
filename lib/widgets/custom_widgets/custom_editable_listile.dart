import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_icon.dart';

class CustomEditableListile extends ConsumerWidget {
  final String title;
  final VoidCallback onClick;
  const CustomEditableListile({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context, ref) {
    return Material(
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.onSecondaryFixed,
        title: Text(title),
        titleTextStyle: TextStyle(fontSize: 12),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              iconSize: 14,
              onPressed: onClick,
              icon: CustomIcon(icon: Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
