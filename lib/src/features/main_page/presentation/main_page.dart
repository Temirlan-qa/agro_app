import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/enum/main_screen_tabs.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/category_boxes_page/presentation/category_boxes_page.dart';
import 'package:agro_app/src/features/category_boxes_page/presentation/category_boxes_page_arguments.dart';
import 'package:agro_app/src/features/chat/presentation/chat_page.dart';
import 'package:agro_app/src/features/favorites/presentation/favorites_page.dart';
import 'package:agro_app/src/features/products/presentation/products_page.dart';
import 'package:agro_app/src/features/profile/presentation/screens/profile_page.dart';

import 'notifier/main_page_notifier.dart';
import 'widgets/bottom_nav_bar/bottom_navigation_bar.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  late final MainPageNotifier _notifier;
  @override
  void initState() {
    super.initState();
    _notifier = ref.read(mainPageNotifierProvider.notifier);
    _notifier.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final pageIndex =
        ref.watch(mainPageNotifierProvider.select((state) => state.pageIndex));

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: context.theme.primary,
        bottomNavigationBar: BottomNavBar(
          pageIndex: pageIndex,
          changePage: _notifier.changePage,
          tabs: const [
            MainScreenTabs.products,
            MainScreenTabs.favorites,
            MainScreenTabs.createProduct,
            MainScreenTabs.chat,
            MainScreenTabs.profile,
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: pageIndex,
            children: [
              const ProductsPage(),
              const FavoritesPage(),
              const SizedBox(),
              const ChatPage(),
              const ProfilePage(),
              Navigator(
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(builder: (context) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ref
                          .read(mainPageNotifierProvider.notifier)
                          .setCategoryBoxesPageContext(context);
                    });

                    return CategoryBoxesPage(
                      arguments:
                          settings.arguments as CategoryBoxesPageArguments?,
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
