import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';
import 'src/navigation/main_tab/settings/settings_controller.dart';
import 'src/navigation/main_tab/settings/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();

  runApp(
    ProviderScope(
      overrides: [
        settingsControllerProvider.overrideWith((ref) => settingsController),
      ],
      child: const MyApp(),
    ),
  );
}
