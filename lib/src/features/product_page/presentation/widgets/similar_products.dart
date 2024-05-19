import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/product_page/presentation/notifier/product_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/widgets/product_item.dart';

class SimilarProducts extends ConsumerWidget {
  const SimilarProducts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentProduct =
        ref.watch(productPageNotifierProvider.select((value) => value.product));
    final products = ref
        .read(productsPageNotifierProvider.notifier)
        .similarProducts(currentProduct.id);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: min(3, products.length),
      itemBuilder: (context, index) => ProductItem(
        product: products[index],
        favoriteIcon: Icon(
          products[index].isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: context.theme.red,
        ),
        onFavoriteTap: () {
          ref
              .read(productsPageNotifierProvider.notifier)
              .favoriteToggle(products[index].id);
        },
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
    );
  }
}
