import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/utils/helpers/web_image_picker.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class UploadCategoryThumbnail extends ConsumerWidget {
  const UploadCategoryThumbnail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editCategoryProvider);
    final image = item?.thumbnail == null
        ? Image.asset("lib/assets/logo_larg.png", fit: BoxFit.contain)
        : Image.memory(item!.thumbnail!);
    return CustomEditInputWithTitle(
      name: context.l10n.thumbnail,
      childWidget: FormSubmitButtom(
        textChild: context.l10n.editThumbnail,
        onPressed: () async {
          final file = await pickImage();
          if (file != null) {
            ref.read(editCategoryProvider.notifier).addCategoryImage(file);
          }
        },
      ),
      rowPreviewArea: image,
    );
  }
}
