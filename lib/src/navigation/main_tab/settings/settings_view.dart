import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/l10n/app_localizations.dart';

import 'package:flutter_template/src/navigation/main_tab/settings/theme.dart';
import 'package:flutter_template/src/navigation/main_tab/settings/settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key, required this.t});

  final AppLocalizations t;

  static String get routeName => 'settings';
  static String get routeLocation => '/$routeName';

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}


class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  AppLocalizations get t => widget.t;

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeNotifierProvider);
    final settingsController = ref.watch(settingsControllerProvider);
    final locale = settingsController.locale;
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.settings_theme_title),
            DropdownButton<ThemeMode>(
              value: themeMode,
              onChanged: (ThemeMode? newTheme) {
                ref.read(themeNotifierProvider.notifier).setTheme(newTheme);
              },
              items: [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text(t.settings_theme_system),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text(t.settings_theme_light),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text(t.settings_theme_dark),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text('Language'),
            DropdownButton<Locale>(
              value: locale ?? const Locale('en'),
              onChanged: (Locale? newLocale) {
                ref.read(settingsControllerProvider).updateLocale(newLocale);
              },
              items: const [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('tr'),
                  child: Text('Türkçe'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
