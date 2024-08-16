import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'localization/language.dart';
import 'navigation/main_tab/settings/theme.dart';
import 'router/router_repository.dart';

/// The Widget that configures your application.
class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        //FirebaseUILocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('tr', 'TR'), // Türkçe, Türkiye country code
        Locale('en', 'US'), // English, United States country code
      ],
      locale: ref.watch(localeNotifierProvider),
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // themeNotifierProvider
      theme: lightThemeMode,
      darkTheme: darkThemeMode,
      themeMode: ref.watch(themeNotifierProvider),

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      backButtonDispatcher: router.backButtonDispatcher,
    );
  }
}
