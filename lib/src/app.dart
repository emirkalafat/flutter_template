import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/l10n/app_localizations.dart';
import 'navigation/main_tab/settings/theme.dart';
import 'navigation/main_tab/settings/settings_controller.dart';
import 'router/router_repository.dart';

/// The Widget that configures your application.
class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final settingsController = ref.watch(settingsControllerProvider);
    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: settingsController.locale,
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
