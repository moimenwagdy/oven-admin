import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/layout/section_item.dart';

class SectionsSide extends StatelessWidget {
  final bool menuSide;
  const SectionsSide({super.key, required this.menuSide});
  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).uri.toString();
    final isSmallDevice = context.isSmallDevice;
    return ListView(
      children: [
        SectionItem(
          destination: "/categories",
          textChild: context.l10n.categoriesTab,
          isSelected: currentLocation == "/categories",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/products",
          textChild: context.l10n.productsTab,
          isSelected: currentLocation == "/products",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/lists",
          textChild: context.l10n.productsListsTab,
          isSelected: currentLocation == "/lists",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/orders",
          textChild: context.l10n.ordersTab,
          isSelected: currentLocation == "/orders",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/images",
          textChild: context.l10n.imagesTab,
          isSelected: currentLocation == "/images",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/accounts",
          textChild: context.l10n.accountsTab,
          isSelected: currentLocation == "/accounts",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/rules",
          textChild: context.l10n.rulesTab,
          isSelected: currentLocation == "/rules",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
        SectionItem(
          destination: "/auth",
          textChild: "Auth",
          isSelected: currentLocation == "/auth",
          onSelected: isSmallDevice
              ? () {
                  Navigator.of(context).pop();
                }
              : null,
        ),
      ],
    );
  }
}
