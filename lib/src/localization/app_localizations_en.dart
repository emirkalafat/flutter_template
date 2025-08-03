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
  String get navigationHome => 'Ana Sayfa';

  @override
  String get navigationProfile => 'Profil';

  @override
  String get homeTitle => 'Ana Sayfa';

  @override
  String get homeWelcome => 'Template APP uygulamasına hoş geldiniz!';

  @override
  String get profileTitle => 'Profil';

  @override
  String get profileWelcome => 'Profil sayfasına hoş geldiniz!';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsWelcome => 'Ayarlar sayfasına hoş geldiniz!';

  @override
  String get settings_theme_title => 'Tema';

  @override
  String get settings_theme_dark => 'Karanlık';

  @override
  String get settings_theme_light => 'Aydınlık';

  @override
  String get settings_theme_system => 'Sistem';
}
