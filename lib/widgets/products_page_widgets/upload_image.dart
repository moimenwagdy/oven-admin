import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/utils/helpers/web_image_picker.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class UploadImage extends ConsumerWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editProductProvider);
    final image = item?.thumbnail == null
        ? Image.asset("lib/assets/logo_larg.png", fit: BoxFit.contain)
        : Image.memory(item!.thumbnail!);
    return CustomEditInputWithTitle(
      name: "Thumbnail",
      childWidget: FormSubmitButtom(
        textChild: "Edit Thumbnail",
        onPressed: () async {
          final file = await pickImage();
          if (file != null) {
            ref.read(editProductProvider.notifier).updateThumbnail(file);
          }
        },
      ),
      previewArea: Row(children: [image]),
    );
  }
}
