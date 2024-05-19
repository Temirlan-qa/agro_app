import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/favorites/presentation/widgets/favorites_app_bar.dart';
import 'package:agro_app/src/features/favorites/presentation/widgets/favorites_list.dart';

import 'notifier/favorites_page_notifier.dart';

class FavoritesPage extends ConsumerStatefulWidget {
  const FavoritesPage({super.key});

  @override
  ConsumerState<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends ConsumerState<FavoritesPage> {
  late final FavoritePageNotifier _notifier;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _notifier = ref.read(favoritePageNotifierProvider.notifier);
      _notifier.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          backgroundColor: context.theme.scaffoldBackground,
          body: const Column(
            children: [
              FavoritePageAppBar(),
              Expanded(child: FavoritesList()),
            ],
          ),
        ),
      ),
    );
  }
}
