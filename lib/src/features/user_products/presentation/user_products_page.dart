import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/user_products_page_notifier.dart';
import 'widgets/user_products_app_bar.dart';
import 'widgets/user_products_list.dart';

class UserProductsPage extends ConsumerStatefulWidget {
  const UserProductsPage({super.key});

  @override
  ConsumerState<UserProductsPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends ConsumerState<UserProductsPage> {
  late final UserProductsPageNotifier _notifier;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _notifier = ref.read(userProductsPageNotifierProvider.notifier);
      _notifier.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primary,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: context.theme.scaffoldBackground,
            body: const Column(
              children: [
                UserProductsPageAppBar(),
                Expanded(child: UserProductsList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
