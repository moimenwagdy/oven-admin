import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/categories_providers/categories_provider.dart';
import 'package:oven_admin/providers/categories_providers/edit_category_provider.dart';
import 'package:oven_admin/widgets/categories_page_widgets/cancel_edit_category_button.dart';
import 'package:oven_admin/widgets/categories_page_widgets/edit_category_inputs.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';

class EditCategoryForm extends ConsumerStatefulWidget {
  final Category categoryItem;
  const EditCategoryForm({super.key, required this.categoryItem});

  @override
  ConsumerState<EditCategoryForm> createState() => _EditCategoryFormState();
}

class _EditCategoryFormState extends ConsumerState<EditCategoryForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController idController;
  late final TextEditingController nameController;
  late final TextEditingController orderController;

  @override
  void initState() {
    super.initState();

    idController = TextEditingController(text: widget.categoryItem.slug);
    nameController = TextEditingController(text: widget.categoryItem.name);
    orderController = TextEditingController(
      text: widget.categoryItem.url.length.toString(),
    );
  }

  @override
  void dispose() {
    idController.dispose();
    nameController.dispose();
    orderController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(EditCategoryForm oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.categoryItem.slug != widget.categoryItem.slug) {
      idController.text = widget.categoryItem.slug;
      nameController.text = widget.categoryItem.name;
      orderController.text = widget.categoryItem.url.length.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 40,
        children: [
          EditCategoryInputs(
            idController: idController,
            nameController: nameController,
            orderController: orderController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CancelEditCategoryButton(),
              Consumer(
                builder: (context, ref, child) {
                  return FormSubmitButtom(
                    textChild: "Submit",
                    onPressed: () {
                      ref
                          .read(categoriesProvider.notifier)
                          .addCategory(
                            Category(
                              slug: idController.text,
                              name: nameController.text,
                              url: orderController.text,
                              thumbnail: widget.categoryItem.thumbnail,
                            ),
                          );
                      ref.invalidate(categoriesProvider);
                      ref
                          .read(editCategoryProvider.notifier)
                          .closeCategoryEditform(null);
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
