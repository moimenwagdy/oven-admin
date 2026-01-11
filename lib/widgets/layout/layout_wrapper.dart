import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/layout/language_toggler.dart';
import 'package:oven_admin/widgets/layout/nav_image.dart';
import 'package:oven_admin/widgets/layout/sections_side.dart';
import 'package:oven_admin/widgets/layout/small_screen_menu_button.dart';

class LayoutWrapper extends StatelessWidget {
  final Widget child;
  const LayoutWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: NavImage(),
        actions: [if (context.isSmallDevice) SmallScreenMenuButton()],
      ),
      drawer: Material(
        color: Theme.of(context).colorScheme.onPrimary,
        child: SectionsSide(menuSide: true),
      ),
      drawerScrimColor: Theme.of(context).colorScheme.secondary,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (!context.isSmallDevice)
                  Container(
                    width: context.screenWidth * .25,
                    height: context.screenHeight,
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: SectionsSide(menuSide: false),
                    ),
                  ),
                Container(
                  width: context.isSmallDevice
                      ? context.screenWidth
                      : context.screenWidth * .75,
                  height: context.screenHeight,
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: BoxBorder.all(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: child,
                  ),
                ),
              ],
            ),
          ),
          LanguageToggler(),
        ],
      ),
    );
  }
}
