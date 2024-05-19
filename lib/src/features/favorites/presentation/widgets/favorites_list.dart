import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/widgets/product_item.dart';

class FavoritesList extends ConsumerWidget {
  const FavoritesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref
        .watch(favoritePageNotifierProvider.select((value) => value.isLoading));
    final favoriteProducts = ref.watch(
        favoritePageNotifierProvider.select((value) => value.favoriteProducts));
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SmartRefresher(
          controller:
              ref.read(favoritePageNotifierProvider.notifier).refreshController,
          onRefresh:
              ref.read(favoritePageNotifierProvider.notifier).refreshProducts,
          child: favoriteProducts.isEmpty && !isLoading
              ? Container(
                  color: context.theme.scaffoldBackground,
                  child: Center(
                    child: Text(S.of(context).productListIsEmpty),
                  ),
                )
              : ListView.separated(
                  itemCount: favoriteProducts.length,
                  itemBuilder: (context, index) => ProductItem(
                    product: favoriteProducts[index],
                    isLoggedIn: true,
                    favoriteIcon: Icon(
                      favoriteProducts[index].isFavorite
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: context.theme.red,
                    ),
                    onFavoriteTap: () {
                      ref
                          .read(favoritePageNotifierProvider.notifier)
                          .removeFavorite(favoriteProducts[index].id);
                    },
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                ),
        ),
      ),
    );
  }
}
