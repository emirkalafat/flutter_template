import 'package:flutter/material.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt('themeMode');
    switch (themeIndex) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      case 0:
      default:
        return ThemeMode.system;
    }
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', theme.index);
  }

  /// Loads the User's preferred Locale from local or remote storage.
  Future<Locale?> locale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString('locale');
    if (localeCode == null) return null;
    return Locale(localeCode);
  }

  /// Persists the user's preferred Locale to local or remote storage.
  Future<void> updateLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.languageCode);
  }
}
