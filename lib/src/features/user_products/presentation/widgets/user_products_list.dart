import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/user_products/presentation/notifier/user_products_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'user_product_item.dart';

class UserProductsList extends ConsumerWidget {
  const UserProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
        userProductsPageNotifierProvider.select((value) => value.isLoading));
    final userProducts = ref.watch(
        userProductsPageNotifierProvider.select((value) => value.userProducts));
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SmartRefresher(
          controller: ref
              .read(userProductsPageNotifierProvider.notifier)
              .refreshController,
          onRefresh: ref
              .read(userProductsPageNotifierProvider.notifier)
              .refreshProducts,
          child: userProducts.isEmpty && !isLoading
              ? Container(
                  color: context.theme.scaffoldBackground,
                  child: Center(
                    child: Text(S.of(context).productListIsEmpty),
                  ),
                )
              : ListView.separated(
                  itemCount: userProducts.length,
                  itemBuilder: (context, index) => UserProductItem(
                    product: userProducts[index],
                    onDelete: ref
                        .read(userProductsPageNotifierProvider.notifier)
                        .deleteProduct,
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                ),
        ),
      ),
    );
  }
}
