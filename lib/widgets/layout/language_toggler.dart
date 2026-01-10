import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/providers/locale_provider/locale_provider.dart';
import 'package:oven_admin/utils/helpers/localization_extension.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';

class LanguageToggler extends ConsumerWidget {
  const LanguageToggler({super.key});

  @override
  Widget build(BuildContext context, ref) {
    print(context.isArabic);
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,

            child: GestureDetector(
              onTap: () {
                if (context.isArabic) {
                  ref.read(appLocaleProvider.notifier).setLocale(Locale("en"));
                } else {
                  ref.read(appLocaleProvider.notifier).setLocale(Locale("ar"));
                }
              },
              child: Text(
                context.l10n.locale,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
