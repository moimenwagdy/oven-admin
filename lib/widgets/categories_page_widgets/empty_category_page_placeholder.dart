import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:uuid/uuid.dart' show Uuid;

class EmptyCategoryPagePlaceholder extends ConsumerWidget {
  const EmptyCategoryPagePlaceholder({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              context.l10n.editCategorySection,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              context.l10n.selectCategoryToEdit,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        SizedBox(
          width: 200,
          child: FormSubmitButtom(
            textChild: context.l10n.addNewCategory,
            onPressed: () {
              ref
                  .read(editCategoryProvider.notifier)
                  .openCategoryToEdit(
                    Category(
                      slug: const Uuid().v1().substring(0, 6),
                      name: "",
                      url: "",
                      thumbnail: null,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
