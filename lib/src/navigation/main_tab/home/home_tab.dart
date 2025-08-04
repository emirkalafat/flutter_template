import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/l10n/app_localizations.dart';


class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key, required this.t});

  final AppLocalizations t;

  static String get routeName => 'home';
  static String get routeLocation => '/$routeName';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final cardWidth = ((MediaQuery.of(context).size.width)) - 16;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.t.homeTitle),
      ),
      body: const SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
