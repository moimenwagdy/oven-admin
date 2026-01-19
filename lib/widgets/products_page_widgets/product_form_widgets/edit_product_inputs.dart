import 'package:flutter/material.dart';
import 'package:oven_admin/providers/products_provider/products_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_text_field.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/dropdown_categories_inside_product_form.dart';
// import 'package:oven_admin/widgets/products_page_widgets/dropdown_categories.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/upload_cover.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/upload_product_details_images.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/upload_thumbnail.dart';
import 'package:oven_admin/widgets/products_page_widgets/product_form_widgets/video_preview.dart';

class EditProductInputs extends StatelessWidget {
  final TextEditingController idController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController categoryController;
  final TextEditingController discountCotroller;

  final Product productItem;

  const EditProductInputs({
    super.key,
    required this.idController,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.productItem,
    required this.categoryController,
    required this.discountCotroller,
  });

  @override
  Widget build(BuildContext context) {
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
          name: context.l10n.categoriesTab,
          childWidget: DropdownCategoriesInsideProductForm(
            controller: categoryController,
          ),
        ),
        CustomEditInputWithTitle(
          name: context.l10n.title,
          childWidget: CustomTextField(
            controller: titleController,
            name: context.l10n.title,
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: context.l10n.description,
          childWidget: CustomTextField(
            controller: descriptionController,
            name: context.l10n.description,
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: context.l10n.price,
          childWidget: CustomTextField(
            controller: priceController,
            name: context.l10n.price,
            inputType: TextInputType.text,
            showNameAtTop: false,
          ),
        ),
        CustomEditInputWithTitle(
          name: context.l10n.discount,
          childWidget: CustomTextField(
            controller: discountCotroller,
            name: context.l10n.discount,
            inputType: TextInputType.number,
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
