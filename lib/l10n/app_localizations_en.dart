// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Template APP';

  @override
  String get navigationHome => 'Home';

  @override
  String get navigationProfile => 'Profile';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeWelcome => 'Welcome to the Template APP!';

  @override
  String get profileTitle => 'Profile';

  @override
  String get profileWelcome => 'Welcome to the profile page!';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsWelcome => 'Welcome to the settings page!';

  @override
  String get settings_theme_title => 'Theme';

  @override
  String get settings_theme_dark => 'Dark';

  @override
  String get settings_theme_light => 'Light';

  @override
  String get settings_theme_system => 'System';
}
