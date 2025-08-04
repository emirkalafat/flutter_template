import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/l10n/app_localizations.dart';
import 'package:flutter_template/src/navigation/main_tab/settings/settings_view.dart';
import 'package:go_router/go_router.dart';


class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key, required this.t});

  final AppLocalizations t;

  static String get routeName => 'profile';
  static String get routeLocation => '/$routeName';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileTab> {
  AppLocalizations get t => widget.t;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.profileTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context
                  .go(ProfileTab.routeLocation + SettingsScreen.routeLocation);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(t.profileWelcome),
      ),
    );
  }
}
