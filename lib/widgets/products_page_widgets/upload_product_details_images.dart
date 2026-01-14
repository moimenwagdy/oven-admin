import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/products_provider/edit_product_provider.dart';
import 'package:oven_admin/utils/helpers/web_image_picker.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class UploadProductDetailsImages extends ConsumerWidget {
  const UploadProductDetailsImages({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(editProductProvider);
    Widget image;
    if (item?.images == null || item!.images!.isEmpty) {
      image = Image.asset(
        "lib/assets/logo_larg.png",
        fit: BoxFit.contain,
        width: 50,
      );
    } else {
      image = Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: item.images!.map((e) {
          return Image.memory(e, width: 50);
        }).toList(),
      );
    }
    return CustomEditInputWithTitle(
      name: "details images",
      childWidget: FormSubmitButtom(
        textChild: "Edit images",
        onPressed: () async {
          final file = await pickMultiImage();
          if (file != null) {
            ref.read(editProductProvider.notifier).updateDetailsImages(file);
          }
        },
      ),
      colPrviewArea: image,
    );
  }
}
