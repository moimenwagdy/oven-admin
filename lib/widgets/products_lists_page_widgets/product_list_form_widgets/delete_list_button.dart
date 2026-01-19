import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/lists_provider/edit_list_provider.dart';
import 'package:oven_admin/providers/lists_provider/lists_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';

class DeleteListButton extends ConsumerWidget {
  final String listId;
  const DeleteListButton({super.key, required this.listId});

  @override
  Widget build(BuildContext context, ref) {
    final productExist = ref.watch(listsProvider).whenData((data) {
      return data.any((item) => item.listID == listId);
    }).value;
    return SizedBox(
      height: 40,
      width: 140,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.red,
          overlayColor: Theme.of(context).colorScheme.onPrimary,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

          animationDuration: const Duration(milliseconds: 200),
        ),
        onPressed: productExist!
            ? () {
                ref.read(listsProvider.notifier).deleteList(listId);
                ref.invalidate(listsProvider);
                ref.read(editListProvider.notifier).closeListEditform(null);
              }
            : null,
        child: Text(
          context.l10n.delete,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
