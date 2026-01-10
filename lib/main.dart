import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oven_admin/l10n/app_localizations.dart';
import 'package:oven_admin/providers/locale_provider/locale_provider.dart';
import 'package:oven_admin/routing/app_router.dart';
import 'package:oven_admin/utils/constants/color_schema.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();

  // final prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      locale: ref.watch(appLocaleProvider).value,
      supportedLocales: [Locale('en'), Locale('ar')],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: buildColorScheme()),
    );
  }
}
