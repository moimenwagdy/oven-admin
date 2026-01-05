import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oven_admin/widgets/layout/section_item.dart';

class SectionsSide extends StatelessWidget {
  const SectionsSide({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).uri.toString();
    return Column(
      children: [
        SectionItem(
          destination: "/products",
          textChild: "Products",
          isSelected: currentLocation == "/products",
        ),
        SectionItem(
          destination: "/lists",
          textChild: "Prodcuts Lists",
          isSelected: currentLocation == "/lists",
        ),
        SectionItem(
          destination: "/orders",
          textChild: "Orders",
          isSelected: currentLocation == "/orders",
        ),
        SectionItem(
          destination: "/images",
          textChild: "Images",
          isSelected: currentLocation == "/images",
        ),
        SectionItem(
          destination: "/accounts",
          textChild: "Accounts",
          isSelected: currentLocation == "/accounts",
        ),
        SectionItem(
          destination: "/rules",
          textChild: "Rules",
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
