import 'package:flutter/material.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:oven_admin/widgets/products_page_widgets/dropdown_categories.dart';
import 'package:oven_admin/widgets/products_page_widgets/upload_cover.dart';
import 'package:oven_admin/widgets/products_page_widgets/upload_product_details_images.dart';
import 'package:oven_admin/widgets/products_page_widgets/upload_thumbnail.dart';
import 'package:oven_admin/widgets/products_page_widgets/video_preview.dart';

class EditProductInputs extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final Product productItem;

  const EditProductInputs({
    super.key,
    required this.idController,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.productItem,
  });

  @override
  Widget build(BuildContext context) {
    print(productItem.categoryId);
    return Column(
      spacing: 10,
      children: [
        CustomEditInputWithTitle(
          name: "ID",
          childWidget: CustomTextField(
            controller: idController,
            name: "ID",
            inputType: TextInputType.text,
            enabled: false,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Category",
          childWidget: DropdownCategories(
            itemsCategory: productItem.categoryId,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Title",
          childWidget: CustomTextField(
            controller: titleController,
            name: "Title",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "Description",
          childWidget: CustomTextField(
            controller: descriptionController,
            name: "Description",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: "price",
          childWidget: CustomTextField(
            controller: priceController,
            name: "price",
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        UploadThumbnail(),
        UploadCover(),
        UploadProductDetailsImages(),
        WebVideoPickerPreview(),
      ],
    );
  }
}
