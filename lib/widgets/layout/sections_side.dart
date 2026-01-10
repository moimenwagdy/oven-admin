import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/widgets/layout/section_item.dart';

class SectionsSide extends StatelessWidget {
  const SectionsSide({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).uri.toString();
    return Column(
      children: [
        SectionItem(
          destination: "/categories",
          textChild: context.l10n.categoriesTab,
          isSelected: currentLocation == "/categoires",
        ),
        SectionItem(
          destination: "/products",
          textChild: context.l10n.productsTab,
          isSelected: currentLocation == "/products",
        ),
        SectionItem(
          destination: "/lists",
          textChild: context.l10n.productsListsTab,
          isSelected: currentLocation == "/lists",
        ),
        SectionItem(
          destination: "/orders",
          textChild: context.l10n.ordersTab,
          isSelected: currentLocation == "/orders",
        ),
        SectionItem(
          destination: "/images",
          textChild: context.l10n.imagesTab,
          isSelected: currentLocation == "/images",
        ),
        SectionItem(
          destination: "/accounts",
          textChild: context.l10n.accountsTab,
          isSelected: currentLocation == "/accounts",
        ),
        SectionItem(
          destination: "/rules",
          textChild: context.l10n.rulesTab,
          isSelected: currentLocation == "/rules",
        ),
        SectionItem(
          destination: "/auth",
          textChild: "Auth",
          isSelected: currentLocation == "/auth",
        ),
      ],
    );
  }
}
