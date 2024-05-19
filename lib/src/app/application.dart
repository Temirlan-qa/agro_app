import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/router/router_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'flavor_builds.dart';

class MainApp extends ConsumerWidget {
  final AppFlavor flavor;
  const MainApp({
    required this.flavor,
    super.key,
  });

  void run() => runApp(ProviderScope(child: this));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return _buildApp(
      flavor: flavor,
      router: router,
    );
  }
}
